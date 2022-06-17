class FollowersViewer < ApplicationService
  def initialize(user:)
    @user = user
  end
  
  def call 
    followers
  end

  private 

  def followers 
    @user.followers
  end
end