
class DashboardController < ApplicationController
  
  def index
    if current_user
      @user = current_user
      @votes = PoliticianVotes.gather_votes_by_politician(@user.politicians) 
      @
    else 
      redirect_to '/signup'
    end 
  end
end 