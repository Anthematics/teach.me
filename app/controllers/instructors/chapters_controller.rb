class Instructors::ChaptersController < ApplicationController
  before_action :ensure_logged_in
	before_action :ensure_user_is_admin
	before_action :current_language, only: [:edit, :update]



	def edit
    @chapter = @current_language.chapters.find(params[:id])

	end

  def update

  end

  def current_language
		@current_language ||= Language.find(params[:language_id])
	end

end
