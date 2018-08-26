class LeaguesController < ApplicationController
  def new
    @user = User.find(session[:user_id])
    @league = @user.leagues.build(admin_id: session[:user_id])
  end

  def create
    @league = League.new(league_params)
    @user = User.find(session[:user_id])
    @league.users << @user
    if @league.save
      session[:league_id] = @league.id
      @user.save
      redirect_to @league
    else
      render 'new'
    end

    def index
      @leagues = League.all
    end

    def show
      if League.find_by_id(params[:id])
        @league = League.find_by_id(params[:id])
        session[:league_id] = @league.id
        @user = User.find_by_id(sessions[:user_id])
        @teams = @leauge.teams

      if Team.find_by_id(params[:id])
        @team = Team.find_by_id(params[:id])
        session[:team_id] = @team.id
        @user = User.find_by_id(sessions[:user_id])
        @players = @team.players
      end
    end

    def edit

    end

    def update

    end

  end

  private

  def league_params
    params.require(:league).permit(:name, :admin_id)
  end

end
