class PlayersController < ApplicationController

  def show
    @player = Player.find_by_id(params["id"])
  end

  def index
    @players = Player.all
  end

  def edit
    @players = Player.find_by(params["id"])
  end

  def update
    @player = Player.find_by_id(params["id"])
    @team = Team.find_by_id(session["team_id"])
    @team.delete_player(@player)
    @team.save
    redirect_to user_team_path(@team.user, @team)
  end

end
