class StepsController < ApplicationController

	def index
		@user = current_user
	end

	def new
		@user = current_user
		@step = Step.new
	end

	def show
		@user = current_user
		@step = Step.find(params[:id])
	end

	def create
		@code = params[:step][:code]
	end


end
