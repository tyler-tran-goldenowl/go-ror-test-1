class FollowingsViewer < ApplicationService
  def initialize(user:)
    @user = user
  end
  
  def call 
    followings 
  end

  private 

  def followings 
    @user.followees
  end
end