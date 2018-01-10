class DashboardController < ApplicationController
  
  def index
    if current_user
      @user = current_user
      @votes = PoliticianVotes.gather_votes_by_politician(@user.politicians) 
    else 
      redirect_to '/signup'
    end 
  end

  def show
    politician = Politician.find_by(name: params[:name])
    @votes = PoliticianVotes.gather_votes_by_politician([politician])[0] 
    @chart = ChartMaker.analytics_pie_chart(@votes)
  end 
end 