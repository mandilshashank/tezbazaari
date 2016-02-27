class UserloginController < ApplicationController
  def new
  end

  def create
    @userlogin = UserLogin.new(user_params)
    #We need to do the validation here for signup

    @userlogin.save
    redirect_to @userlogin
  end

  def show
    @userlogin = UserLogin.find(params[:id])
  end

  private
  def userlogin_params
    params.require(:userlogin).permit( :email, :password)
  end
end
