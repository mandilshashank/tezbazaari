class UserController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    #We need to do the validation here for signup

    @user.save
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :email, :password)
  end
end
