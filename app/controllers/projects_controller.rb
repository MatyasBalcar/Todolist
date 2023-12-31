class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only:[:edit,:update,:destroy]
  # GET /projects or /projects.json
  def index

    @pagy, @projects = pagy_countless(Project.for_user(current_user).includes(:tasks => [:file_attachment]).order(position: :asc), items: 1)
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  # GET /projects/1 or /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = current_user.projects.build
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create
    @project = current_user.projects.build(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to project_url(@project), notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    respond_to do |format|

    if current_user.tasks.blank?
      @project.destroy

        format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
    else

        format.html { redirect_to projects_url, notice: "Project can not be destroyed." }

      end
    end
    end
  def correct_user
    @project=current_user.projects.find_by(id: params[:id])
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
      redirect_to projects_path, notice: "Not authorized" if @project.nil?
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title,:user_id, :position, :creation_date)
    end
end
