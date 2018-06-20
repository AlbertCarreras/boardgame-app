class EventPlayersController < ApplicationController

  def create
    a = EventPlayer.new(eventplayer_params)
    a.player_id = current_user_id
    a.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    if current_user_event_player?
      find_event_player.delete
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def current_user_event_player?
    current_user.event_player_ids.include?(find_event_player_id)
  end

  def find_event_player_id
    EventPlayer.find(params[:event_player][:event_player_id].to_i).id
  end

  def find_event_player
    EventPlayer.find(params[:event_player][:event_player_id].to_i)
  end

  def eventplayer_params
    params.require(:event_player).permit(:event_id)
  end

end
