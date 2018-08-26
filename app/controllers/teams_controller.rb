class TeamsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @team = @user.teams.build(user_id: params[:id])
  end

  def create
    @team = Team.new(team_params)
    @user = User.find(params[:user_id])
    @team.user = @user
    if @team.save
      session[:team_id] = @team.id
      @user.save
      redirect_to user_team_path(@user, @team)
    else
      render 'new'
    end
  end

  def show
    if Team.find_by_id(params[:id])
      @team = Team.find_by_id(params[:id])
      session[:team_id] = @team.id
      @user = User.find_by_id(session[:user_id])
      @players = @team.players
    end
  end

  def edit
    @team = Team.find(params[:id])
    @user = @team.user
    #@players = Player.all
  end

  def update
    @team = Team.find(params[:id])
    @user = @team.user
    if !params["team"]["player"]["delete"]
      if @team.update_attributes(team_params)
        if params["team"]["player"] && !params["team"]["player"].empty?
          player_array = params["team"]["player"].split(" --- ")
          if Player.find_by(name: player_array[0], position: Position.find_by(name: player_array[1]))
            @player = Player.find_by(name: player_array[0], position: Position.find_by(name: player_array[1]))
            if !@team.players.include?(@player)
              if @team.players.find_by(position: @player.position)
                flash[:notice] = "Your team can only have 1 #{@player.position.name}"
                redirect_to user_team_path(@user, @team)
              else
                if @team.valid_addition?(@player) == false
                  flash[:notice] = "You don't have enough money to add this player"
                  redirect_to user_team_path(@user, @team)
                else
                  @team.players << @player
                  redirect_to user_team_path(@user, @team)
                end
              end
            else
              flash[:notice] = "Player is already on this team"
              redirect_to user_team_path(@user, @team)
            end
          else
            flash[:notice] = "Player does not exist"
            redirect_to user_team_path(@user, @team)
          end
        else
          redirect_to user_team_path(@user, @team)
        end
      end
    end
    @team.update_points
  end

  def index
    @teams = Team.all
  end

  private

  def team_params
    params.require(:team).permit(:name, :user_id, :league_id)
  end

end
