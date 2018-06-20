class SessionsController < ApplicationController

	skip_before_action :authenticate!, only: [:new, :create]

	def new
		
	end

	def create
    if @user = User.find_by(name: params[:sessions][:name])
    	return head(:forbidden) unless @user.authenticate(params[:sessions][:password])
    	helpers.log_in_user!(@user.id)
			redirect_to :events
		else
			render :new
		end
  end

	def destroy
	  helpers.log_out_user!
		redirect_to :root
	end

end
