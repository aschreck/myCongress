class PoliticianVotes 
  attr_reader   :politician
  attr_accessor :votes

  def initialize(politician)
    @politician = politician
    @votes = []
  end 

  def self.gather_votes_by_politician(politicians)
    #for each politician, gather all of their votes
    service = propublica
    #all_politician_votes needs to be an array of PV objects  
    all_politician_votes = politicians.flat_map do |politician|
      service.get_politician_votes(politician)
      
      # all_votes = service.get_json("/congress/v1/members/#{politician.uid}/votes.json")
      # pv = PoliticianVotes.new(politician.name)
      # pv.votes = all_votes[:results][0][:votes].map do |vote|
      #   captured_vote = Vote.new(vote) 
      # end
      # v
    end
  end


    def self.propublica 
      PropublicaService.new
    end 
end 