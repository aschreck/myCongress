require "rails_helper"

describe "when a user navigates to the main page and hits register" do
  it "creates their account and takes them to /dashboard" do
    visit '/'

    click_on "Sign Up"

    expect(current_path).to eq '/signup'

    fill_in "name", with: "WatchDog413"
    fill_in "email", with: "watchdog@example.com"
    fill_in "password", with: "password"

    click_on "Submit"

    expect(current_path).to eq "/dashboard"

    user = User.first

    expect(user.first_name).to eq "Cha"
    expect(user.last_name).to eq "Boy"
    expect(user.email).to eq "chaboy@example.com"
  end  
end
