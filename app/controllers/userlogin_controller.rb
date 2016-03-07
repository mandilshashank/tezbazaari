class UserloginController < ApplicationController
  helper :all

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
    session[:userlogin_id] = nil
    if request.post?
      userlogin = UserLogin.authenticate(params[:email_id], params[:password])
      if userlogin
        session[:userlogin_id] = userlogin.id
        redirect_to welcome_index_path
      else
        flash.now[:alert] = "Invalid email_id/password combination"
      end
    end
  end

  def logout
    session[:userlogin_id] = nil
    flash[:notice] = "You are successfully logged out of the system"
    redirect_to welcome_index_path
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
