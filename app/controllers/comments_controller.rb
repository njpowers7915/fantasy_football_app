class CommentsController < ApplicationController
  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @comment = Comment.new(comment_params)
  end

  def index
  end

  def show
  end

  private

  def comment_params
    require(:comment).permit(:content)
  end

end
