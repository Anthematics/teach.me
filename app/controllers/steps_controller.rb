class StepsController < ApplicationController
	before_action :current_user
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
		@code = params[:step][:code]
	end

	def current_language
    @current_language = Language.find_by! name: params[:language_language_id]
  end

end
