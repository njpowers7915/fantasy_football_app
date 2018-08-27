class CommentsController < ApplicationController
  def new
    @league = League.find(params[:league_id])
    @comment = @league.comments.build(league_id: params[:league_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @league = League.find(params[:league_id])
    @comment.league = @league
    @comment.team = Team.find(session[:team_id])
    if @comment.save
      @comment.save
      redirect_to league_comments_path(@league, @league.comments)
    else
      render 'new'
    end
  end




  def index
    @league = League.find_by_id(session[:league_id])
    @team = Team.find_by_id(session[:team_id])
    @comments = @league.comments
  end

  def show
    @comment = Comment.find_by_id(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :league_id)
  end

end
