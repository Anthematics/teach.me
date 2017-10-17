class UsersController < ApplicationController

<<<<<<< HEAD
  def new
  end

  def create
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      session[:user_id] = @user.id

      redirect_to menu_index_path
    else
      render :new
    end
  end

  def show
  end
=======
	def new
	end

	def create
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]

		if @user.save
			session[:user_id] = @user.id

			redirect_to menu_index_path
		else
			render :new
		end
	end

	def show
	end
>>>>>>> 2e8554a768d2db64e5ef59a85bf6b05dc6896e4a

end
