namespace :congress do
  desc "populate the database with currently serving congressmen"
  task populate: :environment do
    #make an API call that returns a JSON response of all the representatives
    conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-Key"] = ENV["PROPUBLICA_API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
    response= conn.get("https://api.propublica.org/congress/v1/115/senate/members.json")
    congress = JSON.parse(response.body)
    senators = congress["results"].first["members"]
    senators.each do |senator|
      name = senator["first_name"] + " " + senator["last_name"]
      Politician.create(name: name,
                         house: "Senate",
                         uid: senator["id"],
                         state: senator["state"],
                         api_uri: senator["api_uri"]
                         )
    end

    
    response= conn.get("https://api.propublica.org/congress/v1/115/house/members.json")
    congress = JSON.parse(response.body)
    reps = congress["results"].first["members"]
    reps.each do |rep|
      name = rep["first_name"] + " " + rep["last_name"]
      Politician.create(name: name,
                         house: "Senate",
                         uid: rep["id"],
                         state: rep["state"],
                         api_uri: rep["api_uri"]
                         )
    end
  end
end