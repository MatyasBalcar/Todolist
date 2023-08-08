class SearchController < ApplicationController
  def index

    @projects = Project.for_user(current_user).ransack(params[:q]).result
    @tasks = Task.for_user(current_user).ransack(params[:q]).result
    @tags = Tag.for_user(current_user).ransack(params[:q]).result

    @combined_results = @projects.to_a + @tasks.to_a + @tags.to_a
  end
end
