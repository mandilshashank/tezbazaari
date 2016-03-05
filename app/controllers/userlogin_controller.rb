class UserloginController < ApplicationController
  def add_user
    if request.post?
      #handle posts
      @userlogin = UserLogin.new(user_params)
      if @userlogin.save
        flash.now[:notice] = "User #{@userlogin.email_id} created"
        @userlogin = UserLogin.new
      end
    else
      #handle gets
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

  private

  def user_params
    params.require(:user_login).permit(:email_id, :password, :password_confirmation)
  end
end
