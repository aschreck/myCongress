class PoliticianVotes 
  attr_reader   :politician
  attr_accessor :votes

  def initialize(politician)
    @politician = politician
    @votes = []
  end 

  def self.gather_votes_by_politician(politicians)
    service = propublica
    all_politician_votes = politicians.flat_map do |politician|
      instantiate_politician_votes(politician)
    end
  end

  def self.instantiate_politician_votes(politician)
    votes = propublica.get_votes(politician)
    pv = PoliticianVotes.new(politician.name)
    pv.votes = Vote.instantiate_votes(votes)
    pv
  end 

  private

    def self.propublica 
      PropublicaService.new
    end 
end 