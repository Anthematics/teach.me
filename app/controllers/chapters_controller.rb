class ChaptersController < ApplicationController
  before_action :current_user
  before_action :current_language, only: [:show, :index]

  def index
  end

  def show
  end

  def current_language
    @current_language = Language.find_by! name: params[:language_language_id]
  end
end
