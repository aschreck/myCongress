require 'rails_helper'

describe "when the api is hit with get requests" do
  it "returns members by state" do
    create(:congressman)

    
    get '/api/v1/search?state=CO'
    
    rep = JSON.parse(response.body)
    
    expect(rep.first["name"]).to eq "Michael Bennet"
  end
end