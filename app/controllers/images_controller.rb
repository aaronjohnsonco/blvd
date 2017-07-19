class ImagesController < ApplicationController

  def create
    @image = Image.new(photo_params)
    @image.save
  end

  private

  params.require(:image).permit(:home_id, :photo)

end
