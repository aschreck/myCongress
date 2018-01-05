
class DashboardController < ApplicationController
  
  def index
    if current_user
      @user = current_user
      #grab politicians
      politicians = @user.politicians
      #make an api call for each one. 
      service = PropublicaService.new
      #all politician votes should be an array of Politician Votes
      @all_politician_votes = politicians.flat_map do |politician|
        votes = service.get_json("https://api.propublica.org/congress/v1/members/#{politician.uid}/votes.json")
        pv = ::PoliticianVotes.new(politician.name)
        pv.votes = votes[:results][0][:votes].map do |vote|
          captured_vote = Vote.new(vote) 
        end
        pv
      end


    else 
      redirect_to '/signup'
    end 
  end
end 