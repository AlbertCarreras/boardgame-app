class SessionsController < ApplicationController
	include AnalyticsHelper

	skip_before_action :authenticate!, only: [:new, :create]

	def new
		if helpers.logged_in?
			redirect_to helpers.logged_in_user
		else
			render layout: 'welcome'
		end
	end

	def create
    if @user = User.find_by(name: params[:sessions][:name])
    	return head(:forbidden) unless @user.authenticate(params[:sessions][:password])
    	helpers.log_in_user!(@user.id)
			redirect_to :events
		else
			redirect_to '/'
		end
  end

	def destroy
	  helpers.log_out_user!
		redirect_to :root
	end

end
