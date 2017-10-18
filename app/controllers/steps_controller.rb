class StepsController < ApplicationController

	def index
		@user = current_user
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
