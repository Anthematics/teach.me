class StepsController < ApplicationController
  before_action :ensure_logged_in
  before_action :current_language, only: [:show, :index]
  def index
  end

  def new
    @step = Step.new
  end

  def show
    check_step_access

    @step = Step.find_by(chapter_id: params[:chapter_id], id: params[:id])

    @steps = Step.where(chapter_id: current_language.chapters.pluck(:id))
    #number of steps finished by current user
    @user_steps = current_user.user_steps.count
    puts @user_steps
    # total steps are total steps of current chapter
    @total_steps = @steps.count
    puts @total_steps

    @progress = ((@user_steps.to_f/@total_steps.to_f) * 100).to_i

  end

  def create
  end

  def check_step_access
    if params[:id].to_i > 1
      if !UserStep.where(step_id: (params[:id].to_i-1)).empty?
        puts "Access"
      else
        redirect_to root_path
      end
    end
  end

  def current_language
    @current_language = Language.find_by! id: params[:language_language_id]

  end



end
