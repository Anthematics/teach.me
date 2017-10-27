class Instructors::LanguagesController < ApplicationController
  before_action :ensure_logged_in
	before_action :ensure_user_is_admin
	before_action :current_language, only: [:show, :edit ]

	def index
    @languages = Language.all
	end

	def show
	end

	def edit
    @language = current_language
	end

  def current_language
		@current_language ||= Language.find(params[:id])
	end

end
