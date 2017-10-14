class ApplicationController < ActionController::Base
  before_action :set_user
  protect_from_forgery with: :exception

  private

  def set_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = User.new
    end
  end

  def ensure_logged_in
    unless @user.persisted?
      flash[:alert] = "Please Log In"
      redirect_to new_session_path
    end
  end
end
