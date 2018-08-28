class PositionsController < ApplicationController
  def show
    @position = Position.find(params[:id])
    render json: @position
  end
end
