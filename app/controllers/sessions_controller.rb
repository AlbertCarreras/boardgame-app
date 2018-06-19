class SessionsController < ApplicationController
	def new
		@users = User.all
	end

	def create
		session[:user_id] = params[:sessions][:user_id]
		redirect_to :events
	end
end
