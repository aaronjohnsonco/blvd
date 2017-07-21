class HomeImagesController < ApplicationController

  def create
    @home = Home.find(params[:home_id])
    @image = @home.home_images.create(home_image_params)
    if @image.save
      redirect_to dashboard_homes_path
    else
      redirect_to root_path
  end

  private

  def home_image_params
    params.require(:home).permit(:photo, :home_id)
  end


end
