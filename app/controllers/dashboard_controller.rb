class DashboardController < ApplicationController

  def index
  end

  def new_home
    @home = Home.new
    # @home.home_images.build
  end

  def homes
    @homes = Home.all
  end

  def communities
    @communities = Community.all
  end

  def settings
  end


end
