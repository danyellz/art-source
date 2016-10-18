class SessionsController < ApplicationController

	def new 
		@user = User.new
		@user.save
	end

	def create
		user = User.find_by_email(params[:email])
		p user
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id

			if request.xhr?
				redirect_to root_url, notice: 'Logged in!'
			else
				redirect_to root_url, notice: 'Logged in!'
			end
		else
			render :new
		end
	end

	def login
		@user = User.find_by_email(params[:email])
		if @user.password == params[:password]
    		give_token
    	else
    		redirect_to home_url
    	end
    end
end
