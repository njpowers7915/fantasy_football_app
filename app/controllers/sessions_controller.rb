class SessionsController < ApplicationController

  def new
  end

  def create
    if !!auth
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      end
      if @user = User.find_by(:email => auth['info']['email'])
        session[:user_id] = @user.id
        redirect_to @user
      else
        @user = User.create(:name => auth['info']['name'], :email => auth['info']['email'], :password => SecureRandom.hex)
        session[:user_id] = @user.id
        redirect_to @user
      end
    else
      @user = User.find_by(:email => params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        flash[:danger] = 'Invalid name/password combination'
        redirect_to login_path
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
