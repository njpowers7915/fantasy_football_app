class CommentsController < ApplicationController
  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @comment = Comment.new(comment_params)
  end

  def index
    @league = League.find_by_id(session[:league_id])
    @comments = @league.comments
  end

  def show
    @comment = Comment.find_by_id(params[:id])
  end

  private

  def comment_params
    require(:comment).permit(:content)
  end

end
