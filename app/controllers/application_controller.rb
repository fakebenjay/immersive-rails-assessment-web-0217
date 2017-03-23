class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login
    if User.where(id: session[:user_id])[0]
      @user = User.find(session[:user_id])
    else
      if session
        session.destroy
      end
      redirect_to login_path
    end
  end
end
