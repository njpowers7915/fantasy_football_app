class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update]

  def show
    render json: @player
  end

  def index
    players = Player.all
    render json: players
  end

  def update
    @team = Team.find_by_id(session["team_id"])
    if params["delete"]
      @team.delete_player(@player)
      @team.update_salary
      @team.update_points
      redirect_to user_team_path(@team.user, @team)
    end
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

end
