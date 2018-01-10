class PropublicaService
  def initialize
    @conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
      faraday.headers["X-API-Key"] = ENV["PROPUBLICA_API_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_politician_votes(politician)
    all_votes = get_json("/congress/v1/members/#{politician.uid}/votes.json")
    pv = PoliticianVotes.new(politician.name)
    pv.votes = all_votes[:results][0][:votes].map do |vote|
      captured_vote = Vote.new(vote) 
    end
    pv.gather_analytics(pv.votes)
    pv
  end

  def get_bill_details(bill_id)
    get_json("/congress/v1/115/bills/#{bill_id}.json")[:results][0]
  end

    attr_reader :conn

    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
end