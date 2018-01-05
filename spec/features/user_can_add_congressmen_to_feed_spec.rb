require 'rails_helper'

describe "when a user clicks on add congressmen" do
  it "they see a dropdown and can click on a state and see reps" do
    user = create(:user)
    visit '/login'
    fill_in "email", with: user.email
    fill_in "password", with: "password"
    click_on "Submit"

    click_on 'Follow Politicians'
  end
end