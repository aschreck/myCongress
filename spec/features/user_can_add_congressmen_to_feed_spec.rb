require 'rails_helper'

describe "when a user clicks on add congressmen" do
  it "they see a dropdown and can click on a state and see reps" do
    user = create(:user)
    politician = create(:politician)
    visit '/login'
    fill_in "email", with: user.email
    fill_in "password", with: "password"
    
    click_on "Submit"

    click_on 'Follow Politicians'

    
    visit "/follow?name=#{'Michael Bennet'}"

    expect(Following.first.user_id).to eq user.id 
    expect(Following.first.politician_id).to eq politician.id 
  end
end