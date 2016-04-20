class LocationUserprofile < ActiveRecord::Base
  belongs_to :location
  belongs_to :user_profile 
end
