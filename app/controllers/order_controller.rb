class OrderController < ApplicationController
  helper :all

  #Get view for the order page
  def index
    @userlogin_id = session[:userlogin_id]
    #Find the locations for this user login id
    if(params.has_key?(:location_id))
      @location = Location.where("id = " + params[:location_id])
      @location_present = true
    else   
      @location = Location.joins(location_userprofile: {user_profile: :user_login} ).where("user_logins.id = ?", @userlogin_id)
    end 
  end

  #Post controller for the order page
  def create
  end

  def show(id)
  end
end
