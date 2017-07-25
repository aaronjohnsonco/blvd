class CommunitiesController < ApplicationController

  def index
    @communities = Community.order(:sort).all
  end

  def show
    @community = Community.find(params[:id])
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.create(community_params)
    if @community.save
      redirect_to dashboard_communities_path
      flash[:notice] = 'New community has been created.'
    else
      render new
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    @community.update(community_params)
    redirect_to dashboard_communities_path
    flash[:notice] = 'The community has been updated.'
  end

  # def edit
  #   @home = Home.find(params[:id])
  # end
  #
  # def update
  #   @home = Home.find(params[:id])
  #   @home.update(home_params)
  #   redirect_to dashboard_homes_path
  # end


  private

  def community_params
    params.require(:community).permit(
      :name,
      :overview,
      :highschool,
      :middleschool,
      :elementaryschool,
      :school_title,
      :content
    )
  end

end
