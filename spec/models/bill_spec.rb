require 'rails_helper'

describe Bill do
  it "can be initialized with data " do
    
   bill = Bill.new(bill_data)

   expect(bill.short_title).to eq "CHIP and Public Health Funding Extension Act"
   expect(bill.title).to eq "To amend the Homeland Security Act of 2002 to require the Secretary of Homeland Security to issue Department of Homeland Security-wide guidance and develop training programs as part of the Department of Homeland Security Blue Campaign, and for other purposes."
   expect(bill.sponsor).to eq "Michael McCaul"
   expect(bill.sponsor_uri).to eq "https://api.propublica.org/congress/v1/members/M001157.json"
   expect(bill.website_url).to eq "https://www.congress.gov/bill/115th-congress/house-bill/1370"
   expect(bill.sponsor_party).to eq "R"
   expect(bill.sponsor_state).to eq "TX"
   expect(bill.d_cosponsors).to eq 3
   expect(bill.r_cosponsors).to eq 5
   expect(bill.summary).to eq "Department of Homeland Security Blue Campaign Authorization Act of 2017 (Sec. 2) This bill amends the Homeland Security Act of 2002 to authorize in the Department of Homeland Security (DHS) a unified, anti-human trafficking campaign to be known as the Blue Campaign, under which the Secretary of DHS shall issue DHS-wide guidance to, and develop and coordinate training for, appropriate DHS personnel regarding:  programs to help identify instances of human trafficking and potential connections t..."
   expect(bill.last_action).to eq ("Became Public Law No: 115-96.")
  end
end