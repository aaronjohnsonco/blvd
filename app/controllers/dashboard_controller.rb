class DashboardController < ApplicationController

  def index
  end

  def new_home
    @home = Home.new
    @home.home_images.build
  end

  def homes
  end

  def communities
  end

  def settings
  end

end
