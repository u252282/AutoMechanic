class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :address_line_1
devise_parameter_sanitizer.for(:sign_up) << :address_line_2
devise_parameter_sanitizer.for(:sign_up) << :city
devise_parameter_sanitizer.for(:sign_up) << :state
devise_parameter_sanitizer.for(:sign_up) << :zipcode
devise_parameter_sanitizer.for(:sign_up) << :phone_number
devise_parameter_sanitizer.for(:sign_up) << :garage_id
devise_parameter_sanitizer.for(:sign_up) << :garage_code
devise_parameter_sanitizer.for(:sign_up) << :garage_code_employee

devise_parameter_sanitizer.for(:account_update) << :name
devise_parameter_sanitizer.for(:account_update) << :address_line_1
devise_parameter_sanitizer.for(:account_update) << :address_line_2
devise_parameter_sanitizer.for(:account_update) << :city
devise_parameter_sanitizer.for(:account_update) << :state
devise_parameter_sanitizer.for(:account_update) << :zipcode
devise_parameter_sanitizer.for(:account_update) << :phone_number
devise_parameter_sanitizer.for(:account_update) << :garage_id
devise_parameter_sanitizer.for(:account_update) << :garage_code
devise_parameter_sanitizer.for(:account_update) << :garage_code_employee

end
end
