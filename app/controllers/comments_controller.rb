class CommentsController < ApplicationController
  def new
    @league = League.find(sessions[:league_id])
    @comment = @league.comments.build(sessions[:league_id])
  end

  def create
    @league = League.find_by_id(params[:league_id])
    @comment = Comment.create(comment_params)
    @comment.save
    render json: @comment
  end

  def index
    @league = League.find_by_id(params[:league_id])
    @team = Team.find_by_id(session[:team_id])
    @comments = @league.comments.order("created_at DESC")
    render json: @comments
  end

  def show
    @comment = Comment.find_by_id(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :league_id, :team_id)
  end

end
