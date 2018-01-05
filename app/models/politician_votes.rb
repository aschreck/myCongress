class PoliticianVotes 
  attr_reader   :politician
  attr_accessor :votes

  def initialize(politician)
    @politician = politician
    @votes = []
  end 
end 