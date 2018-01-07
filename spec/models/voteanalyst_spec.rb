require 'rails_helper'

describe VotesAnalyst do
  it "can determine vote totals" do
    votes = []

    4.times do 
      
      votes << Vote.new({
                    "member_id": "A000360",
                    "chamber": "Senate",
                    "vote_uri": "https://api.propublica.org/congress/v1/115/senate/sessions/1/votes/325.json",
                    "bill": {
                        "bill_id": "hr1370-115",
                        "number": "H.R.1370",
                        "sponsor_id": "M001157",
                        "bill_uri": "https://api.propublica.org/congress/v1/115/bills/hr1370.json",
                        "title": "To amend the Homeland Security Act of 2002 to require the Secretary of Homeland Security to issue Department of Homeland Security-wide guidance and develop training programs as part of the Department of Homeland Security Blue Campaign, and for other purposes.",
                        "latest_action": "Became Public Law No: 115-96."
                    },
                    "description": "A bill to amend the Homeland Security Act of 2002 to require the Secretary of Homeland Security to issue Department of Homeland Security-wide guidance and develop training programs as part ...",
                    "result": "Motion Agreed to",
                    "date": "2017-12-21",
                    "time": "18:48:00",
                    "total": {
                        "yes": 66,
                        "no": 32,
                        "present": 0,
                        "not_voting": 2
                    },
                    "position": "Yes"
                })
    end 
      votes << Vote.new({
                    "member_id": "A000360",
                    "chamber": "Senate",
                    "vote_uri": "https://api.propublica.org/congress/v1/115/senate/sessions/1/votes/325.json",
                    "bill": {
                        "bill_id": "hr1370-115",
                        "number": "H.R.1370",
                        "sponsor_id": "M001157",
                        "bill_uri": "https://api.propublica.org/congress/v1/115/bills/hr1370.json",
                        "title": "To amend the Homeland Security Act of 2002 to require the Secretary of Homeland Security to issue Department of Homeland Security-wide guidance and develop training programs as part of the Department of Homeland Security Blue Campaign, and for other purposes.",
                        "latest_action": "Became Public Law No: 115-96."
                    },
                    "description": "A bill to amend the Homeland Security Act of 2002 to require the Secretary of Homeland Security to issue Department of Homeland Security-wide guidance and develop training programs as part ...",
                    "result": "Motion Agreed to",
                    "date": "2017-12-21",
                    "time": "18:48:00",
                    "total": {
                        "yes": 66,
                        "no": 32,
                        "present": 0,
                        "not_voting": 2
                    },
                    "position": "No"
                })
                
    va = VotesAnalyst.new

    va.vote_totals(votes)
    expect(va.yes_percentage).to eq 80.0
    expect(va.no_percentage).to eq 20.0
  end
end