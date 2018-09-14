class CommentsController < ApplicationController
  def new
    @league = League.find(session[:league_id])
    @team = Team.find(session[:team_id])
    @comment = @team.comments.build(team_id: session[:team_id])
    respond_to do |format|
      format.js
    end
  end

  def create
    @league = League.find_by_id(params[:league_id])
    @team = Team.find_by_id(params[:team_id])
    @comment = Comment.create(comment_params)
    #@comment.team = Team.find_by_id(params[:team_id])
    render json: @comment
  end

  def message_board
    @league = League.find_by_id(session[:league_id])
    @team = Team.find_by_id(session[:team_id])
    @comment = Comment.new
    if !@league.comments.nil?
      @comments = @league.comments.order(created_at: :desc)
    else
      @league.comments = []
      @comments = @league.comments
    end
    respond_to do |format|
      format.js
    end
  end

  def index
    @league = League.find_by_id(params[:league_id])
    @team = Team.find_by_id(session[:team_id])
    if @league.comments
      @comments = @league.comments.order(created_at: :desc)
    else
      @league.comments = []
      @comments = @league.comments
    end
    respond_to do |format|
      format.js
      format.json { render json: @comments }
    end
  end

  def show
    @comment = Comment.find_by_id(params[:id])
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :league_id, :team_id)
  end

end
