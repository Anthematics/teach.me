class StepsController < ApplicationController

	def index
	end

	def new
		@step = Step.new
	end

	def show
		@user = User.find(params[:id])
		Step.find(params[:id])

	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
