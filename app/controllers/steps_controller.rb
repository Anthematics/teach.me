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

    #array of steps of current chapter of current language
    @steps = current_language.chapters.find(params[:chapter_id]).steps.all
    #number of steps finished by current user
    @user_steps = current_user.user_steps.count
    # total steps are total steps of current chapter
    @total_steps = @steps.count

    @progress = ((@user_steps.to_f/@total_steps.to_f) * 100).to_i

  end

  def create
  end

  def current_language
    @current_language = Language.find_by! name: params[:language_language_id]
  end

end
