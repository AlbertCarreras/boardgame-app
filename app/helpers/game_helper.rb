module GameHelper

  def owned_game?(game_id)
    current_user.game_ids.include?(game_id)
  end

end
