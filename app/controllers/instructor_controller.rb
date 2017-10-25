class InstructorController < ApplicationController
 	before_action :ensure_user_is_admin

  def index
    @languages = Language.all
  end

  def editLanguages
   @language = Language.find(params[:id])
  end

  def editChapters
  end

  def editSteps
  end

  def editCodeTest
  end

  def current_language
    language_id params[:language_id]
    @current_language ||= Language.find(language_id)
  end
end
