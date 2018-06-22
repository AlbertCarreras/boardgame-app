class Game < ApplicationRecord
  validates :title, presence: {message: "required"}
  validates :title, uniqueness: {message: "must be unique"}
  validates :image, presence: {message: "required"}

  has_many :ownerships
  has_many :users, through: :ownerships
  has_many :event_games
  has_many :events, through: :event_games
end
