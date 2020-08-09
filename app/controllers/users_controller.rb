class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(strong_params)
  end

  private

  def strong_params
    params.require(:user).permit(:user_name)
  end
end
