class SessionsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  end

  def create
    current_user = params[:name]

    if !current_user.blank?
      session[:name] = params[:name]
      redirect_to secrets_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

end
