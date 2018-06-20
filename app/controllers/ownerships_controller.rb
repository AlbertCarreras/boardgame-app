class OwnershipsController < ApplicationController

  def create
    a = Ownership.new(ownership_params)
    a.user_id = current_user_id
    a.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    find_ownership.delete
    redirect_to user_path(current_user_id)
  end

  private

  def find_ownership
    Ownership.find(params[:ownership][:ownership_id].to_i)
  end

  def ownership_params
    params.require(:ownership).permit(:game_id)
  end

end
