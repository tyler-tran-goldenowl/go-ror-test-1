class FollowDestroyer < ApplicationService
  def initialize(followee:, follower:)
    @followee = followee
    @follower = follower
  end
  
  def call 
    destroy_follow 
  end

  private 

  def destroy_follow 
    Follow.where(followee: @followee, follower: @follower).destroy_all
  end
end