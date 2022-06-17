# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  # validates :username, format: { /^[a-zA-Z]\w{5,19}$/ }

  has_many :followees, class_name: "Follow", foreign_key: "follower_id"
  has_many :followers, class_name: "Follow", foreign_key: "followee_id"
end
