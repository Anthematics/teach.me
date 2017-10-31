class LanguagesController < ApplicationController
	before_action :ensure_logged_in
	before_action :current_language, only: [:show ]

	def index
			@languages = Language.all
	end

	def show

	end

	def update
	end

	def current_language
		@current_language = Language.find_by!name:params[:language_id]
	end
end
