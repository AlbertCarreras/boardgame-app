class ApplicationController < ActionController::Base

  before_action :current_user
  helper_method :user_name

  def current_user
    session[:user_id]
  end

  def user_name
    User.find(current_user).name
  end

end
