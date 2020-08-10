class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_post = @user.comments.map {|comment| comment.post}.compact
  end

end
