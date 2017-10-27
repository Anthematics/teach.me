class Instructors::StepsController < ApplicationController
  before_action :ensure_logged_in
	before_action :ensure_user_is_admin
	before_action :current_language, only: [:edit, :update]



	def edit
    @language = current_language
    @chapter = @current_language.chapters.find(params[:id])
    @step = @chapter.steps.find(params[:id])
    @codeTest = @step.code_tests

	end

  def update
    @language = current_language
    @chapter = @current_language.chapters.find(params[:id])
    @step = @chapter.steps.find(params[:id])

    @step.name = params["step"]["name"]
    @step.description = params["step"]["description"]

    if @step.save
      redirect_to languages_path
    else
      render :edit
    end

  end

  def current_language
		@current_language ||= Language.find(params[:language_id])
	end

end
