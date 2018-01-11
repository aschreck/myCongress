class PoliticianVotesPresenter
 
  attr_reader :politician_vote, :chart

  def initialize(politician_votes)
    @politician_votes = politician_votes
  end 

  def self.make_presenters(votes)
    votes.map do |vote|
      PoliticianVotesPresenter.new(vote)
    end
  end

  def recent_bill_title
    @politician_votes.votes.first.bill_title  
  end

  def recent_bill_votes_for
    @politician_votes.votes.first.votes_for
  end 

  def recent_bill_votes_against
    @politician_votes.votes.first.votes_against
  end

  def recent_bill_date
    @politician_votes.votes.first.date
  end 

  def recent_bill_time
    @politician_votes.votes.first.time
  end 

  def politician
    @politician_votes.politician
  end 

  def chamber
    @politician_votes.votes.first.chamber
  end 

  def vote
    @politician_votes.votes.first.vote_of_politician
  end 

  def abstentions
    @politician_votes.votes.first.abstentions
  end 
end