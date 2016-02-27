class UserProfile < ActiveRecord::Base
  has_one :user_login
  has_many :order
end
