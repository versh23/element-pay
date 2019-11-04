class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    static_account_path(user_id: current_user.id)
    # user_path(current_user) #your path
  end
end
