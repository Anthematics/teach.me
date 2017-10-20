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
     @total_test = @step.code_tests.count
     @valid = 0
     @step.code_tests.each do |test|
     @testcode = @usercode + "\n print " + test.input
       response = HTTParty.post("https://codeapi.herokuapp.com/code/ruby",:body => {:step => {:code => @testcode}})

        body = JSON.parse(response.body)
        puts body.to_s
        puts test.output
        if body.to_s == test.output
          @valid += 1
        end
      end

    if @total_test == @valid
      if UserStep.find_by(user_id: current_user.id, step_id: @step.id).present?
        @user_steps = UserStep.first.update_attributes(userCode: @usercode)
        puts @user_steps
      else
      @user_steps = UserStep.create!(user_id: current_user.id, step_id: params[:step_id], userCode: @usercode)
      end
      puts @user_steps
      render json: {message: "Congrualtions, you pass this Step!"}
    else
      render json: "Try again!, you passed #{@valid} test out of #{@total_test}."
    end
  end

  def show
  end

end
