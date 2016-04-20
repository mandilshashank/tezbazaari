class UserProfile < ActiveRecord::Base
  belongs_to  :user_login
  has_many :order
end
