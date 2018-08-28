class PlayersController < ApplicationController
  before_action :set_player, only[:show]

  def show
    render json: @player
  end

  def index
    players = Player.all
    render json: players
  end

  #def edit
  #  @players = Player.find_by(params["id"])
  #end

  #def update
  #  @player = Player.find_by_id(params["id"])
  #  @team = Team.find_by_id(session["team_id"])
  #  @team.delete_player(@player)
  #  @team.save
  #  redirect_to user_team_path(@team.user, @team)
  #end

  private

  def set_player
    @player = Player.find(params[:id])
  end

end
