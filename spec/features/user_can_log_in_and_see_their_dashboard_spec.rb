require 'rails_helper'

describe "as a user when I log in with my account info" do
  it "takes me to my dashboard" do
    user = create(:user)
    politician = create(:politician) 
    create(:following, user_id: user.id, politician_id: politician.id)
    
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