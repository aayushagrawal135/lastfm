class WelcomeController < ApplicationController
  def index
  	@users = User.all
  	render json: @users
  end

  def signin
  	credential = User.find_by(username => params[:name], email => params[:email])
  	if credential.present?
  		redirect_to :controller => "user", :action => "lookProfile", :credential => credential
  	else
  		redirect_to :action => "signup"
  	end
  end

  def signup
  	@user = User.new(:username => params[:name], :email => params[:email])
  	if @user.save
  		redirect_to :action => "index"
  	else 
  		render json: params[:name]
  	end
  end
end
