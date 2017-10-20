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

    @steps = current_language.chapters.find(params[:chapter_id]).steps.all
    @user_steps = current_user.user_steps.count
   puts @user_steps
    @total_steps = @steps.count
   puts @total_steps
    @progress = ((@user_steps.to_f/@total_steps.to_f) * 100).to_i

  end

  def create

  end

  def current_language
    @current_language = Language.find_by! name: params[:language_language_id]
  end

end
