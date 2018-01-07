FactoryBot.define do
  factory :vote do
    bill_title "Bill for Stuff"
    description "Does things"
    chamber "Senate"   
    time "12:00"     
    date "12/24"       
    votes_for 55 
    votes_against 45
    abstentions 0 
    vote_of_politician "Yes"
  end
end