class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = find_user
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private

  def find_user
    User.find(params[:id])
  end

end
