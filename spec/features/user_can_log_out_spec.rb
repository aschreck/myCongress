describe "A logged in user" do
  it "can hit the sign out button and be logged out" do

    user = create(:user)

    visit '/login'
 
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    
    visit '/dashboard'

    click_on 'Logout'
      
    expect(current_path).to eq '/home'

  end
end