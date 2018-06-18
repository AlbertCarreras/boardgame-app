class User < ApplicationRecord
  has_many :ownerships
  has_many :games, through: :ownerships
  has_many :events, foreign_key: "host_id"
end
