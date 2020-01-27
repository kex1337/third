class SessionsController < ApplicationController
  	include SessionsHelper

  	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
			if user && user.authenticate(params[:session][:password])
				log_in(user)
				remember user
				redirect_to user
			else
				flash[:danger] = "Try again"
				render 'new'
			end
	end	
	
	def destroy
		log_out
		flash[:danger] = 'Logged out'
		redirect_to root_url
	end
end
