class DashboardPresenter

  def initialize(user)
    @user = user
  end  

  def get_votes
    @votes = PoliticianVotes.gather_votes_by_politician(@user.politicians)
  end 

end
