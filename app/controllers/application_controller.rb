class ApplicationController < ActionController::Base

  before_action :current_user_id
  helper_method :user_name, :current_user_id

  def current_user_id
    session[:user_id] || User.first.id
  end

  def user_name
    @user = User.find(current_user_id).name
  end

end
