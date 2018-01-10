module Helpers

  def yes_vote
    
    { "member_id": "A000360",
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
    }
  end

  def no_vote
    { "member_id": "A000360",
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
    }
  end


  def bill_vote_data
    {
        :chamber=>"House",
        :date=>"2017-12-21",
        :time=>"16:53:00",
        :question=>"On Motion to Concur in the Senate Amendment with an Amendment",
        :result=>"Passed",
        :total_yes=>231,
        :total_no=>188,
        :total_not_voting=>13,
        :api_url=>"https://api.propublica.org/congress/v1/115/house/sessions/1/votes/708.json"
    }
  end 

  def bill_data 
    {
        :bill_id=>"hr1370-115",
        :bill_slug=>"hr1370",
        :congress=>"115",
        :bill=>"H.R.1370",
        :bill_type=>"hr",
        :number=>"H.R.1370",
        :bill_uri=>"https://api.propublica.org/congress/v1/115/bills/hr1370.json",
        :title=>
        "To amend the Homeland Security Act of 2002 to require the Secretary of Homeland Security to issue Department of Homeland Security-wide guidance and develop training programs as part of the Department of Homeland Security Blue Campaign, and for other purposes.",
        :short_title=>"CHIP and Public Health Funding Extension Act",
        :sponsor_title=>"Rep.",
        :sponsor=>"Michael McCaul",
        :sponsor_id=>"M001157",
        :sponsor_uri=>"https://api.propublica.org/congress/v1/members/M001157.json",
        :sponsor_party=>"R",
        :sponsor_state=>"TX",
        :gpo_pdf_uri=>nil,
        :congressdotgov_url=>"https://www.congress.gov/bill/115th-congress/house-bill/1370",
        :govtrack_url=>"https://www.govtrack.us/congress/bills/115/hr1370",
        :introduced_date=>"2017-03-06",
        :active=>true,
        :last_vote=>"2017-12-21",
        :house_passage=>"2017-12-21",
        :senate_passage=>"2017-11-06",
        :enacted=>"2017-12-22",
        :vetoed=>nil,
        :cosponsors=>8,
        :cosponsors_by_party=>{:D=>3, :R=>5},
        :withdrawn_cosponsors=>0,
        :primary_subject=>"Crime and Law Enforcement",
        :committees=>"Senate Homeland Security and Governmental Affairs Committee",
        :committee_codes=>["SSGA", "HSJU", "HSHM"],
        :subcommittee_codes=>["HSJU08"],
        :latest_major_action_date=>"2017-12-22",
        :latest_major_action=>"Became Public Law No: 115-96.",
        :house_passage_vote=>"2017-12-21",
        :senate_passage_vote=>"2017-11-06",
        :summary=>
        "Department of Homeland Security Blue Campaign Authorization Act of 2017 (Sec. 2) This bill amends the Homeland Security Act of 2002 to authorize in the Department of Homeland Security (DHS) a unified, anti-human trafficking campaign to be known as the Blue Campaign, under which the Secretary of DHS shall issue DHS-wide guidance to, and develop and coordinate training for, appropriate DHS personnel regarding:  programs to help identify instances of human trafficking and potential connections to terrorist activities, including along the U.S. borders;  systematic and routine information sharing among DHS components and the National Network of Fusion Centers regarding individuals suspected or convicted of human trafficking, patterns and practices of human trafficking, and potential connections to terrorist activities;  techniques to identify suspected victims of trafficking along the U.S. borders;  techniques specifically for Transportation Security Administration personnel to identify suspected trafficking victims at airport security and to serve as a liaison and resource to aviation workers and the traveling public;  utilizing resources to educate partners and stakeholders and increase public awareness of human trafficking; and  leveraging partnerships with governmental, non-governmental, and private sector organizations at the state and local levels to raise public awareness of human trafficking and potential connections to terrorist activities.  DHS shall: (1) ensure that information technology systems utilized within DHS to record and track information regarding individuals suspected or convicted of human trafficking are capable of systematic and routine information sharing, and (2) report to Congress on the status and effectiveness of the campaign.",
        :summary_short=>
        "Department of Homeland Security Blue Campaign Authorization Act of 2017 (Sec. 2) This bill amends the Homeland Security Act of 2002 to authorize in the Department of Homeland Security (DHS) a unified, anti-human trafficking campaign to be known as the Blue Campaign, under which the Secretary of DHS shall issue DHS-wide guidance to, and develop and coordinate training for, appropriate DHS personnel regarding:  programs to help identify instances of human trafficking and potential connections t..."
    }
  end 
end 