class FollowController < ApplicationController

  def create
   congressman = Congressman.find_by(name: params["name"]) 
   user = current_user 
   Following.create(user_id: user.id, congressman_id: congressman.id)
   
   redirect_to '/find_politicians'
  end
  
end