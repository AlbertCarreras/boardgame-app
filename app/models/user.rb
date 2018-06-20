class User < ApplicationRecord
  has_many :ownerships
  has_many :games, through: :ownerships
  has_many :organized_events, :class_name => "Event", foreign_key: "host_id"
  # has_many :events, through: :event_players
end
