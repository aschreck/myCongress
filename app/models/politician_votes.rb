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
      service.get_politician_votes(politician)
    end
  end


    def self.propublica 
      PropublicaService.new
    end 
end 