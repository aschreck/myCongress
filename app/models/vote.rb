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
              :bill_id,
              :type

  def initialize(params)
    @bill_title = set_title(params)
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

  def set_title(params)
    if params[:bill][:title]
      @type  = "Bill"
      params[:bill][:title]
    elsif !params[:description] == ""
      @type = "Nomination"
      params[:description]
    else 
      @type = nil
      params[:question]
    end
  end

  def normalize(data)
    if data.include?("-")
      data = data.split('-')[0]
    end 
    data.downcase
  end 

  def self.make_vote(vote)
    Vote.new(vote)
  end 

end