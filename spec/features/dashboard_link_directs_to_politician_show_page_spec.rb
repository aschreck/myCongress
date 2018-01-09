require 'rails_helper'

describe 'as a user when I visit my dashboard and click on a politicians name' do
  it 'should take me to a page for that individual politician.' do
    
    user = create(:user)
    politician = create(:politician) 
    create(:following, user_id: user.id, politician_id: politician.id)
    
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    
    visit '/dashboard'
    
    click_on "Michael Bennet"
    
    expect(current_path).to eq '/politician'
    
    expect(page).to have_content("Michael Bennet")
    expect(page).to have_css('.title')
    expect(page).to have_css('.chamber')
    expect(page).to have_css('.vote')
    expect(page).to have_css('.spread')
    expect(page).to have_css('.date')
  end
end 

