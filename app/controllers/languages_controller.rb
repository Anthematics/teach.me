class LanguagesController < ApplicationController
  before_action :current_user
  before_action :current_language, only: [:show ]

  def index
  end

  def show
  end


	def current_language
		language_name = params[:language_id]
		@current_language ||= Language.find_by!(name:language_name)
	end
end
