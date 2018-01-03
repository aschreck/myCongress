require 'rails_helper'

describe "as a user when I log in with my account info" do
  it "takes me to my dashboard" do
    user = create(:user)
    user.update(password_digest: "$2a$10$v2IBvK39wg/3KD7s5MIj2.nQzfVSsEZf28pYTrr96tQQP.TM4aBs.")
    user.save
    
    visit '/login'

    fill_in "email", with: user.email
    fill_in "password", with: "password"

    click_on "Submit"

    expect(current_path).to eq '/dashboard'
    expect(page).to have_content 'Lebron James'
  end

  it "/dashboard takes me to the login page if I am not logged in" do
    visit '/dashboard'

    expect(current_path).to eq '/signup'
  end
end