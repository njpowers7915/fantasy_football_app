class LeaguesController < ApplicationController
  def new
    @league = League.new(league_params)
  end

  def create
    @league = League.new(league_params)
    @user = User.find(session[:user_id])
    @league.users << @user
    if @legaue.save
      session[:league_id] = @league.id
      @user.save
      redirect_to user_league_path(@user, @league)
    else
      render 'new'
    end

    def show

    end

    def edit

    end

    def update

    end

  end

  private

  def league_params
    params.require(:league).permit(:name)
  end

end
