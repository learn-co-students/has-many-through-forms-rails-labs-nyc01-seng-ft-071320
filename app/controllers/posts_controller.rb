class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @commenters = @post.comments.map(&:user).compact.uniq
    @comment = Comment.new
    @comment.build_user
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, category_ids:[], categories_attributes: [:name])
  end
end
