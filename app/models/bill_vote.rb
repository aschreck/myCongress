class BillVote 
  attr_reader :chamber, 
              :date,
              :time,
              :question,
              :yes_votes,
              :no_votes,
              :not_voting,
              :total,
              :result

  def initialize(params)
    @chamber = params[:chamber]
    @date = params[:date]
    @time = params[:time]
    @question = params[:question]
    @yes_votes = params[:total_yes]
    @no_votes  = params[:total_no]
    @not_voting  = params[:total_not_voting]
    @total = @yes_votes + @no_votes + @not_voting
    @result    = params[:result]
  end 
end 