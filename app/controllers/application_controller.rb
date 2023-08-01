class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_query

  def set_query
    @query=Project.ransack(params[:q])
  end
  # Include it in the controllers (e.g. application_controller.rb)
  include Pagy::Backend

  # Include it in the helpers (e.g. application_helper.rb)
  include Pagy::Frontend

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:surname])
  end
end
