class Instructors::CodeTestController < ApplicationController
  before_action :ensure_logged_in
	before_action :ensure_user_is_admin
	before_action :current_language, only: [:edit, :update]



	def edit
    @language = current_language
    @chapter = @current_language.chapters.find(params[:chapter_id])
    @step = @chapter.steps.find(params[:step_id])
    @test = @step.code_tests.find(params[:id])
	end

  def update
    @language = current_language
    @chapter = @current_language.chapters.find(params[:chapter_id])
    @step = @chapter.steps.find(params[:step_id])
    @test = @step.code_tests.find(params[:id])

    @test.input = params["code_test"]["input"]
    @test.output = params["code_test"]["output"]

    if @test.save
      redirect_to languages_path
    else
      render :edit
    end


  end

  def current_language
		@current_language ||= Language.find(params[:language_id])
	end

end
