model

  class User
    has_many ownerships
    has_many games, through ownerships
    has_many events, foreign_key: ‘host_id’
    <!-- has-many event_players, foreign_key: ‘player_id’
    has_many events, through event_players -->


  class Game
    has_many ownerships
    has_many users, through ownerships
    has_many event_games
    has_many events, through event_games

  class Ownership
    belongs_to game
    belongs_to user

  class Event
    belongs_to :host, class_name:'User'
    has_many event_games
    has_many games, through event_games

<!-- class EventPlayer
    belongs_to event
    belongs_to ???? -->

class EventGame
    belongs_to event
    belongs_to game
