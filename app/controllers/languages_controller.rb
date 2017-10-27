class LanguagesController < ApplicationController
	before_action :ensure_logged_in
	before_action :current_language, only: [:show ]

	def index
	end

	def show
	end

	def update
	end
	
	def current_language
		language_id params[:language_id]
		@current_language ||= Language.find(language_id)
	end
end
