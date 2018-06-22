class AnalyticsController < ApplicationController

        def show
        	@stats = {}

        	@stats[:total_users] = User.count
        	@stats[:total_events] = Event.select { |e| e.date > Time.now }.count
        	@stats[:total_games] = Game.count

        	@events = Event.all
        @top_player_count = 0

        @events.each do |event|
            this_player_count = event.players.count
            if this_player_count > @top_player_count
                @event_title = event.title
                @top_player_count = this_player_count
            end
        end

        @stats[:most_popular_event] = "#{@top_player_count} players at #{@event_title}"

        @games = Game.all
        @top_owner_count = 0

        @games.each do |game|
            this_owner_count = game.ownerships.count
            if this_owner_count > @top_owner_count
                @game_title = game.title
                @top_owner_count = this_owner_count
            end
        end

        @stats[:most_popular_game] = "#{@top_owner_count} gamers collect #{@game_title}"

        end

end
