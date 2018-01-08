class FollowController < ApplicationController

  def create
   congressman = Politician.find_by(name: params["name"]) 
   user = current_user 
   Following.create(user_id: user.id, politician_id: congressman.id)
   
   flash[:success] = "Successfully followed #{congressman.name}"
   redirect_to '/dashboard'
  end
  
  def destroy
    user = current_user
    politician = Politician.find_by(name: params["name"])
    following = Following.where("user_id = ? and politician_id = ?", "#{current_user.id}","#{politician.id}").first
    following.destroy
    redirect_to '/dashboard'
    flash[:success] = "Successfully unfollowed #{politician.name}"
  end 
end