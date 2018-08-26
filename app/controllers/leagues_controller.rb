class LeaguesController < ApplicationController
  def new
    @league = League.new(league_params)
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
    end

    def show
      if League.find_by_id(params[:id])
        @league = League.find_by_id(params[:id])
        session[:league_id] = @league.id
        @user = User.find_by_id(session[:user_id])
        @teams = @league.teams
        @comments = @league.comments
      end
    end

    def edit

    end

    def update

    end


  private

  def league_params
    params.require(:league).permit(:name, :admin_id)
  end

end
