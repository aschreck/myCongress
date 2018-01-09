class Vote
  attr_reader :bill_title, 
              :description,
              :chamber,
              :time,
              :date,
              :votes_for,
              :votes_against,
              :abstentions,
              :vote_of_politician,
              :bill_id

  def initialize(params)
    if params[:bill][:title]
      @bill_title   = params[:bill][:title]
    elsif !params[:description] == ""
      @bill_title   = params[:description]
    else 
      @bill_title   = params[:question]
    end
    @description   = params[:description]
    @chamber       = params[:chamber]
    @time          = params[:time]
    @date          = params[:date]
    @votes_for     = params[:total][:yes]
    @votes_against = params[:total][:no]
    @abstentions   = params[:total][:not_voting]
    @bill_id       = normalize(params[:bill][:bill_id])
    @vote_of_politician = params[:position]
  end 

  def normalize(data)
    if data.include?("-")
      data = data.split('-')[0]
    end 
    data.downcase
  end 
  
end