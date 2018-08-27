class PlayersController < ApplicationController

  def show
    @player = Player.find_by_id(params["id"])
  end

  def index
    @players = Player.all
  end

end
