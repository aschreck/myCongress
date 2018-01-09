class Vote
  attr_reader :bill_title, 
              :description,
              :chamber,
              :time,
              :date,
              :votes_for,
              :votes_against,
              :abstentions,
              :vote_of_politician

  def initialize(params)
    if params[:bill][:title]
      @bill_title   = params[:bill][:title]
    else
      @bill_title   = params[:description]
    end
    @description  = params[:description]
    @chamber      = params[:chamber]
    @time         = params[:time]
    @date         = params[:date]
    @votes_for    = params[:total][:yes]
    @votes_against = params[:total][:no]
    @abstentions  = params[:total][:not_voting]
    @vote_of_politician = params[:position]
  end 
  
end