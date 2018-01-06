
class DashboardController < ApplicationController
  
  def index
    if current_user
      @user = current_user
      @votes = PoliticianVotes.gather_votes_by_politician(@user.politicians) 



      # service = PropublicaService.new
      # @all_politician_votes = politicians.flat_map do |politician|
      #   all_votes = service.get_json("https://api.propublica.org/congress/v1/members/#{politician.uid}/votes.json")
      #   pv = ::PoliticianVotes.new(politician.name)
      #   pv.votes = all_votes[:results][0][:votes].map do |vote|
      #     captured_vote = Vote.new(vote) 
      #   end
      #   pv
      # end
    else 
      redirect_to '/signup'
    end 
  end
end 