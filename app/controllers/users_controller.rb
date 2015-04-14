class UsersController < ApplicationController

  before_filter :authenticate_user!, only: [:edit, :update]

  def new
    @user = RegularUser.new
  end

  def create
    @user = RegularUser.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  def show
    @user = current_user
  end
  
  private

  def user_params
    params.require(:regular_user).permit(:first_name, :last_name, :password_digest, :password, :password_confirmation)
  end

end