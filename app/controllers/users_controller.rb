require 'httparty'

class UsersController < ApplicationController
  protect_from_forgery except: :submitcode

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

  def submitcode
     @usercode = params[:code]
     @step = Step.find(params[:step_id])
     @step.code_tests.each do |test|
       @testcode = @usercode + "\n" + test.input

     end
    # response = HTTParty.get("")
     render json: 'ok'
  end

  def show
  end

end
