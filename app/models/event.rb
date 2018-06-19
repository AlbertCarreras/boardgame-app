class Event < ApplicationRecord
  belongs_to :host, :class_name => "User"
  has_many :event_games
  has_many :games, through: :event_games
  has_many :event_players
  has_many :players, through: :event_players, :class_name => "User"

  # additional functionality
  extend TimeSplitter::Accessors
  split_accessor :date

  def event_host
    self.host
  end

end
