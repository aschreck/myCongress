class DashboardController < ApplicationController
  
  def index
    if current_user
      @user = current_user
    else 
      redirect_to '/signup'
    end 
  end
end 