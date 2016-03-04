class UserloginController < ApplicationController
  def add_user
    @userlogin = UserLogin.new(params[:userlogin])
    if request.post? and @userlogin.save
      flash.now[:notice] = "User #{@user.email} created"
      @userlogin = UserLogin.new
    end
  end

  def login
  end

  def logout
  end

  def index
  end

  def delete_user
  end

  def list_users
  end
end
