class FollowCreator < ApplicationService
  def initialize(followee:, follower:)
    @followee = followee
    @follower = follower
  end
  
  def call 
    create_follow 
  end

  private 

  def create_follow 
    Follow.create!(followee: @followee, follower: @follower)
  end
end