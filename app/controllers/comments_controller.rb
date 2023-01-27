class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    @comment.save
    redirect_to user_posts_path(current_user)
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
