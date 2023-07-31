module ApplicationHelper
  # Include it in the controllers (e.g. application_controller.rb)
  include Pagy::Backend

  # Include it in the helpers (e.g. application_helper.rb)
  include Pagy::Frontend
end
