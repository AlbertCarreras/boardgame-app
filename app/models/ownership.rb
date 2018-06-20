class Ownership < ApplicationRecord
  belongs_to :game
  belongs_to :user

  def owned_game?(game_id)
    current_user_id

  end

end
