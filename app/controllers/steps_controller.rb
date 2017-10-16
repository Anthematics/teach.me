class StepsController < ApplicationController

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

	def edit
	end

	def update
	end

	def destroy
	end

end
