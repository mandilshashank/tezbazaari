class OrderController < ApplicationController
  helper :all

  #Get view for the order page
  def index
    @userlogin_id = session[:userlogin_id]
    #Find the locations for this user login id
    @locations = Location.joins(location_userprofile: {user_profile: :user_login} ).where("user_logins.id = ?", @userlogin_id)
  end

  #Post controller for the order page
  def create
  end

  def show(id)
  end
end
