class NewFollowersCurrentMonth < ApplicationService
  def initialize(user:)
    @user = user
  end
  
  def call 
    new_followers_current_month 
  end

  private 

  def new_followers_current_month 
    current_month = Time.now.month
    current_year = Time.now.year

    Follow.where(followee: @user, created_at: Time.current.month)
  end
end