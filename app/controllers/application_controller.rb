class ApplicationController < ActionController::Base
<<<<<<< HEAD
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
=======
	protect_from_forgery with: :exception

	
private

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

helper_method :current_user
	def ensure_logged_in
		unless current_user
			flash[:alert] = "Please Log In"
			redirect_to root_path
		end
	end
>>>>>>> 2e8554a768d2db64e5ef59a85bf6b05dc6896e4a
end
