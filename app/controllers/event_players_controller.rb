class EventPlayersController < ApplicationController

  def create
    a = EventPlayer.new(eventplayer_params)
    a.player_id = current_user_id
    a.save
    redirect_back(fallback_location: root_path)
  end

  # def destroy
  #   if current_user_ownership?
  #     find_ownership.delete
  #   end
  #   redirect_back(fallback_location: root_path)
  # end
  #
  private
  #
  # def current_user_ownership?
  #   current_user.ownership_ids.include?(find_ownership_id)
  # end
  #
  # def find_ownership_id
  #   Ownership.find(params[:ownership][:ownership_id].to_i).id
  # end
  #
  # def find_ownership
  #   Ownership.find(params[:ownership][:ownership_id].to_i)
  # end
  #
  def eventplayer_params
    params.require(:event_player).permit(:event_id)
  end

end
