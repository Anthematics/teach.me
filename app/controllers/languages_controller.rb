class LanguagesController < ApplicationController
	before_action :ensure_logged_in
	before_action :current_language, only: [:show ]

	def index
			@languages = Language.all

			
	end

	def show

	end

	def update
	end

	def current_language
		@current_language = Language.find_by!name:params[:language_id]
	end

	def is_chapter_completed(chapter_id)
		number_of_completed_steps = Chapter.joins(steps: [:user_steps])
			.where(chapters: {id: chapter_id}, user_steps: {successfully_completed: true})
			.count
		number_of_total_steps = Step.where(chapter_id: chapter_id).count

		number_of_completed_steps == number_of_total_steps
	end
	helper_method :is_chapter_completed
end
