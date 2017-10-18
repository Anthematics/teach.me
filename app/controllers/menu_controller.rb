class MenuController < ApplicationController
  before_action :current_user, only: [:show]

  def index
    @current_user = User.new
  end

  def show
  end
end
