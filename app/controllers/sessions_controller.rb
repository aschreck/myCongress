class SessionsController < ApplicationController

  def new
  end

  def create
   user = User.find_by(email: params["email"]) 
   
   if user && user.authenticate(params[:password])
    flash[:success] = "Logged in as #{user.name}"
    session[:user_id] = user.id
    redirect_to '/dashboard'
   else 
    redirect_to '/login'
   end 
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/home'
    flash[:success] = "Successfully Logged Out"
  end

end