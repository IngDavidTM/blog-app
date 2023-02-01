class PostsController < ApplicationController
  load_and_authorize_resource
  def index
    @user = User.includes(:posts).find_by(id: params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
    @comments = Comment.where(post_id: params[:id])
    @user = current_user
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author = current_user
    if @post.save
      redirect_to user_posts_path(current_user)
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @likes = Like.where(post_id: @post.id)
    @likes.each do |like|
      like.destroy
    end
    @comments = Comment.where(post_id: @post.id)
    @comments.each do |comment|
      comment.destroy
    end
    if @post.destroy
      @post.decrement_posts_counter
      redirect_to user_path(current_user), status: :see_other
    else
      render 'new'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
