# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout 'application'
  include ApplicationHelper

  helper_method :location_categories, :public_subtypes, :private_subtypes

  def render_404
    render file: "#{Rails.root}/public/404.html", status: :not_found, layout: false
  end

  def render_500
    render file: "#{Rails.root}/public/500.html", status: :internal_server_error, layout: false
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
  end
end
