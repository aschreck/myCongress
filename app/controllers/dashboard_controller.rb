class DashboardController < ApplicationController
  
  def index
    if current_user
      @user = current_user
      votes = PoliticianVotes.gather_votes_by_politician(@user.politicians) 
      @presenters = PoliticianVotesPresenter.make_presenters(votes)
    else 
      redirect_to '/signup'
    end 
  end

  def show
    politician = Politician.find_by(name: params[:name])
    votes = PoliticianVotes.gather_votes_by_politician([politician])[0] 
    chart = ChartMaker.analytics_pie_chart(@votes)
    @presenters = 
    PoliticianVotesPresenter.new(votes, chart)
  end 
end 