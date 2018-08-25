class TeamsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @team = @user.teams.build(user_id: params[:id])
  end

  def create
    @team = Team.new(team_params)
    @user = User.find(params[:user_id])
    @team.user = @user
    if @team.save
      session[:team_id] = @team.id
      redirect_to user_team_path(@user, @team)
    else
      render 'new'
    end
  end

  def show
    if Team.find_by_id(params[:id])
      @team = Team.find_by_id(params[:id])
      session[:team_id] = @team.id
      @user = User.find_by_id(sessions[:user_id])
      @players = @team.players
    end
  end

end
