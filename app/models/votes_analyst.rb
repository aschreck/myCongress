class VotesAnalyst

  attr_reader :yes_percentage, :no_percentage

  def vote_totals(votes)
    @total = votes.count 
    total_yes = 0.0
    total_no = 0.0
    votes.each do |vote|
      if vote.vote_of_politician == 'Yes'
        total_yes += 1
      elsif vote.vote_of_politician == 'No'
        total_no += 1
      end 
    end 

    @yes_percentage = vote_percentages(total_yes)
    @no_percentage  = 1 - @yes_percentage
    
    @yes_percentage *= 100
    @no_percentage *= 100

    @yes_percentage = @yes_percentage.round(2)
    @no_percentage = @no_percentage.round(2)
  end 
  
  def vote_percentages(criterion)
    criterion/ @total
  end 
end
