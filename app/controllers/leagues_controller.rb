class LeaguesController < ApplicationController
  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)
    @team = Team.find_by(user_id: session[:user_id])
    @league.teams << @team
    @league.admin_id = session[:user_id]
    if @league.save
      session[:league_id] = @league.id
      @league.save
      redirect_to @league
    else
      render 'new'
    end
  end

    def index
      @leagues = League.all
      @team = Team.find_by_id(session[:team_id])
    end

    def show
      if League.find_by_id(session[:league_id])
        @league = League.find_by_id(session[:league_id])
        #session[:league_id] = @league.id
        @user = User.find_by_id(session[:user_id])
        @teams = @league.teams
        @comments = @league.comments
      end
    end

    def edit
      @league = League.find(params[:id])
    end

    def update
      @league = League.find(params[:id])
      @team = Team.find_by_id(session[:team_id])
      @user = User.find_by_id(session[:user_id])
      if params["join_league"]
        @team.join_league(@league)
        redirect_to user_team_path(@user, @team)
      end
    end


  private

  def league_params
    params.require(:league).permit(:name, :admin_id)
  end

end
