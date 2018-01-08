describe "As a logged in user" do
  it "unfollow a politician" do
    user = create(:user)
    politician = create(:politician) 
    create(:following, user_id: user.id, politician_id: politician.id)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    visit '/dashboard'

    click_on "Unfollow"

    expect(current_path).to_not have_content(politician.name)
  end 
end