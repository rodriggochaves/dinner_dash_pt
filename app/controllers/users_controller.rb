class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #Valid save user
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :email, :display_name)
  end
end
