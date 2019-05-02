class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    # byebug
    @comment = Comment.create(comment_params)
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :movie_id)
  end

end
