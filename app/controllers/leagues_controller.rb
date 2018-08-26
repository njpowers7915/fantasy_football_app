class LeaguesController < ApplicationController
  def new
    @league = League.new(league_params)
  end

  def create
    @league = League.new(league_params)
    @user = User.find(params[:user_id])
    @league.users << @user
    if @legaue.save
      session[:league_id] = @league.id
      redirect_to user_league_path(@user, @team)
    else
      render 'new'
    end
  end

  private

  def league_params
    params.permit(:name)
  end

end
