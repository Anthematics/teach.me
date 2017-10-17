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
<<<<<<< HEAD



=======
>>>>>>> 2e8554a768d2db64e5ef59a85bf6b05dc6896e4a
	end

	def edit
	end

	def update
	end

	def destroy
	end

end
