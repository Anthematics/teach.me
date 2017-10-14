class UsersController < ApplicationController

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
    # @user = User.find(params[:id])
    # @step = @user.steps.new
    # @code = params[:user][:code]
    # format.json {render json:@todo}
  end

end
