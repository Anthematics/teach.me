class StepsController < ApplicationController
	before_action :ensure_logged_in
	before_action :current_language, only: [:show, :index]
	def index
	end

	def new
		@step = Step.new
	end

	def show
		@step = Step.find(params[:id])
	end

	def create

	end

	def current_language
    @current_language = Language.find_by! name: params[:language_language_id]
  end

end
