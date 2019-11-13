class ApplicationController < ActionController::Base



    protect_from_forgery with: :exception
  # before_action :store_requested_url
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    static_account_path(user_id: current_user.id)
    # user_path(current_user) #your path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :title_id, :province_id, :first_name, :last_name) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password) }
  end

  # def after_sign_in_path_for(resource)
  #   session[:requested_url] || root_path
  # end

  private

  def store_requested_url
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath == /\/users/
  end
end
