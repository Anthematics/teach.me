class LanguagesController < ApplicationController
  before_action :current_user

  def index
  end

  def ruby
    @ruby = Language.find_by(name:"Ruby")
  end

end
