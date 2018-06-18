class Event < ApplicationRecord
  belongs_to :host, class_name:'User'
  has_many :event_games
  has_many :games, through: :event_games
end
