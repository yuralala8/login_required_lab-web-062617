class SecretsController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_user, :authorize_user, :logged_in?

  def show
    # if !session.include? :user_id
    # redirect_to sessions_new_path
    # else
    #   redirect_to secrets_path
    # end
  end


end
