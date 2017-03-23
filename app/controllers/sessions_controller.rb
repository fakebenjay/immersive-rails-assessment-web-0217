class SessionsController < ApplicationController
  
  def new
    @user = User.new
    redirect_to guests_path if logged_in?
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user.try(:authenticate, params[:user][:password])
      session[:user_id] = @user.id
      redirect_to guests_path
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

    def logged_in?
      !!session[:user_id]
    end
end
