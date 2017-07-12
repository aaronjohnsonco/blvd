class CommunitiesController < ApplicationController

  def create
  end


  private

  def community_params
    params.require(:community).permit(
      :name,
      :overview
    )
  end

end
