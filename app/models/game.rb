class Game < ApplicationRecord
  has_many :ownerships
  has_many :users, through: :ownerships
  has_many :event_games
  has_many :events, through: :event_games
end
