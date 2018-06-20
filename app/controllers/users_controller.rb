class UsersController < ApplicationController

  skip_before_action :authenticate!, only: [:new, :create]

  before_action :set_user, only: [:show, :edit, :update]
  before_action :authorize!, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @games = Game.all
    @user = find_user
    @ownership = Ownership.new
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      helpers.log_in_user!(@user.id)
      redirect_to :events
    else
      render :new
    end
  end

  def edit

  end

  def update
    
  end

  private

  def find_user
    User.find(params[:id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def authorize!
    redirect_to new_session_url unless helpers.logged_in_as?(@user.id)
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
