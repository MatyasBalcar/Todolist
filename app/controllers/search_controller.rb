class SearchController < ApplicationController
  def index
    @projects_query = Project.ransack(params[:q])
    @tasks_query = Task.ransack(params[:q])
    @tags_query = Tag.ransack(params[:q])

    @projects = @projects_query.result(distinct: true)
    @tasks = @tasks_query.result(distinct: true)
    @tags = @tags_query.result(distinct: true)

    # If you want to combine the results into a single array, you can do this:
    @combined_results = @projects.to_a + @tasks.to_a+@tags.to_a
  end
end
