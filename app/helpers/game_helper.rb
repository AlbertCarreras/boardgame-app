module GameHelper

  def owned_game?(game_id)
    current_user.game_ids.include?(game_id)
  end

  def current_ownership(game_id)
    current_user.ownerships.find_by(game_id: game_id)
  end

  def current_ownership_id(game_id)
    current_user.ownerships.find_by(game_id: game_id).id
  end

end
