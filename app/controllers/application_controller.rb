class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper SessionHelper
  helper_method :user_name, :current_user_id, :current_user

  before_action :authenticate!

  def set_user(user_id)
    session[:user_id] = user_id
  end

  def current_user
    User.find(current_user_id)
  end

  def current_user_id
    session[:user_id]
  end

  def user_name
    if current_user_id
      User.find(current_user_id).name
    else
      nil
    end
  end

  private

  def authenticate!
    redirect_to new_session_url unless helpers.logged_in?
  end

end
