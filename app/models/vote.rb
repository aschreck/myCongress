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
    @bill_title   = params[:bill][:title]
    @description  = params[:description]
    @chamber      = params[:chamber]
    @time         = params[:time]
    @date         = params[:date]
    @votes_for    = params[:total][:yes]
    @votes_against = params[:total][:no]
    @abstentions  = params[:total][:not_voting]
    @vote_of_politician = params[:position]
  end 

  def self.instantiate_votes(votes)
    votes[:results][0][:votes].map do |vote|
      captured_vote = Vote.new(vote) 
    end
  end 
end