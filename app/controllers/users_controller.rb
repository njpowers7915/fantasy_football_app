class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index
    @user = User.find_by_id(session[:user_id])
    redirect_to '/'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @team = Team.new
    @message = params[:message] if params[:message]
    @message ||= false

    if User.find_by_id(session[:user_id])
      @user = User.find_by_id(session[:user_id])
      respond_to do |format|
        format.html
        format.json { render json: @user }
      end
    else
      redirect_to '/'
    end
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @user = User.find_by_id(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :admin)
  end
end
