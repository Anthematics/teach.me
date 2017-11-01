
require 'httparty'

class UsersController < ApplicationController
  protect_from_forgery except: :submitcode


  def new
  end

  def create
    @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.admin = false

    if @user.save
      session[:user_id] = @user.id

      redirect_to menu_index_path
    else
        flash[:user] = @user
      render :new
    end
  end

  def update
    @user = current_user
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      flash[:alert] = "User profile successfully updated."
      redirect_to languages_path
    end
  end

  def submitcode
     @usercode = params[:code]
     @step = Step.find(params[:step_id]) #finds which step you are on so it knows which tests to run
     @chapter = Chapter.find(@step.chapter_id)
     @language = @chapter.language_id
     @total_test = @step.code_tests.count #can test multiple times if code works this way
     @valid = 0
     @step.code_tests.each do |test|
       @code = remove_puts(@usercode)
     @testcode = @code + "\n print " + test.input # requires an explicit result to print in this case so we can compare with output.
       response = HTTParty.post("https://codeapi.herokuapp.com/code/ruby",:body => {:step => {:code => @testcode}}) #ajax call to mini app for eval
        if response.body.to_s == test.output # now compare the 2 and if they = each other
          @valid += 1 #another test is valid
        end
      end


    if @total_test == @valid # if we pass all tests
      if UserStep.find_by(user_id: current_user.id, step_id: @step.id).present? #in the user test table , if this person already wrote this test and they're making adjustments we are giving the ability for the database -> because when updated we dont want to make the file bigger
        @user_steps = UserStep.first.update_attributes(userCode: @usercode)
      else
      @user_steps = UserStep.create!(user_id: current_user.id, step_id: params[:step_id], userCode: @usercode, successfully_completed: true) #creates a new space in the DB with new code assuming it hasn't been written yet.
      end

      @next_step = @step.next


      if @next_step.nil?
        render json: {message: "Congratulations, you have now completed the language!", pass: true, url: languages_path}
      else
        url =  "/languages/" + @language.to_s + "/chapters/" + @next_step.chapter.id.to_s + "/steps/" + @next_step.id.to_s
        render json: {message: "Congratulations, you pass this Step!", pass: true, url: url}
      end
    else
      render json: {message: "Try again!, you passed #{@valid} test out of #{@total_test}.", pass:false}
    end
  end

  def show
  end

  def remove_puts(code)
    a = code.split("\n")
    a.delete_if {|w| w.include? "puts"}
    a.delete_if {|w| w.include? "print" }
    a.join("\n")
  end

  def current_language
    @current_language = Language.find_by! id: params[:language_language_id]
  end

end
