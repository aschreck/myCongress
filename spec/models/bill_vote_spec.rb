require 'rails_helper'
require 'helpers'

describe BillVote do
  it "can be initialized with data " do
    
   bill_vote = BillVote.new(bill_vote_data)

   expect(bill_vote.chamber).to eq "House"
   expect(bill_vote.date).to eq "2017-12-21"
   expect(bill_vote.time).to eq  "16:53:00"
   expect(bill_vote.question).to eq "On Motion to Concur in the Senate Amendment with an Amendment"
   expect(bill_vote.result).to eq "Passed"
   expect(bill_vote.yes_votes).to eq 231
   expect(bill_vote.no_votes).to eq 188
   expect(bill_vote.not_voting).to eq 13
   expect(bill_vote.total).to eq (231 + 188 + 13)
  end
end