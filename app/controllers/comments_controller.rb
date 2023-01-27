class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user
    if @comment.save
      redirect_to user_post_path(id: params.require(:post_id), user_id: params.require(:user_id))
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
