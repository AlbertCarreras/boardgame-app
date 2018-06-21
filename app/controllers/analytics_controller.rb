class AnalyticsController < ApplicationController

	def show
		@stats = {}
		@players = {}
		@owners = {}

		@stats[:total_users] = User.count
		@stats[:total_events] = Event.select { |e| e.date > Time.now }.count
		@stats[:total_games] = Game.count

		EventPlayer.all.each do |player|
			if @players[player.event_id]
				@players[player.event_id] = @players[player.event_id] + 1
			else
				@players[player.event_id] = 1
			end
		end

		@players.sort_by(&:last)
		@stats[:most_popular_event] = "#{@players.to_a[0][1]} players at #{Event.find(@players.to_a[0][0]).title}"


		Ownership.all.each do |game|
			if @owners[game.game_id]
				@owners[game.game_id] = @owners[game.game_id] + 1
			else
				@owners[game.game_id] = 1
			end
		end

		@owners.sort_by(&:last)
		@stats[:most_popular_game] = "#{@owners.to_a[0][1]} gamers collect #{Game.find(@owners.to_a[0][0]).title}"


	end

end
