class ApplicationController < ActionController::Base
	before_action :configure_premitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

private

  def configure_premitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << [:name, :email, :age, :gender, :onlineStatus, :password, :password_confirmation]
  	devise_parameter_sanitizer.for(:account_update) << [:name, :email, :age, :gender, :onlineStatus, :password, :password_confirmation]
  end
end
