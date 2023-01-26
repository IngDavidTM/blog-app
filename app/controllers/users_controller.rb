class UsersController < ApplicationController
  def index
    @users = User.all
    @posts = Post.where(author_id: params[:id])
    @comments = Comment.where(post_id: params[:id])
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(author_id: params[:id])
  end
end
