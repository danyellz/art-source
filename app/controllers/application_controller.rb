class ApplicationController < ActionController::Base
  protect_from_forgery

  def create
  	user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Logged in!'
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

  private
  def current_user
    User.where(id: session[:user_id]).first
  end
  helper_method :current_user
end
