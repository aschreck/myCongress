require "rails_helper"

describe "when a user navigates to the main page and hits register" do
  it "creates their account and takes them to /dashboard" do
    visit '/'

    click_on "Sign Up"

    expect(current_path).to eq '/signup'

    fill_in "user_name", with: "WatchDog413"
    fill_in "user_email", with: "watchdog@example.com"
    fill_in "user_password", with: "password"
    

    click_on "Submit"

    expect(current_path).to eq "/dashboard"
    expect(page).to have_content "Add Representatives"
    
    user = User.find_by(name: "WatchDog413")

    expect(user.name).to eq "WatchDog413"
    expect(user.email).to eq "watchdog@example.com"
  end  
end
