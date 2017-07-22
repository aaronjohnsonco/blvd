class CommunitiesController < ApplicationController

  def new
    @community = Community.new
  end

  def create
    @community = Community.create(community_params)
    if @community.save
      redirect_to dashboard_communities_path
    else
      render new
    end
  end


  private

  def community_params
    params.require(:community).permit(
      :name,
      :overview,
      :highschool,
      :middleschool,
      :elementaryschool,
      :school_title
    )
  end

end
