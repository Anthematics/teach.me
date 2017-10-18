class StepsController < ApplicationController
	before_action :current_user

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


end
