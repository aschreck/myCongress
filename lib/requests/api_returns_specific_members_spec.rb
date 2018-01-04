require 'rails_helper'

describe "when the api is hit with get requests" do
  it "returns members by state" do
    get '/api/v1/congressmen?state=CO'

    response = JSON.parse(response.body)

    expect response["name"] .to eq "Michael Bennet"
  end
end