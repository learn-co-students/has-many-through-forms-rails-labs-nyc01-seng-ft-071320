class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_posts = @user.comments.map{|comment| comment.post}.compact
  end


end
