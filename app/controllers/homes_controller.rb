class HomesController < ApplicationController

  def index
    @communities = Community.order(:sort).all
    @homes = Home.all
  end

  def show
    @communities = Community.order(:sort).all
    @home = Home.find(params[:id])
    @features = @home.features.all
    @images = @home.home_images.all
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to dashboard_homes_path
    else
      redirect_to new_home_path
    end
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])
    @home.update(home_params)
    redirect_to dashboard_homes_path
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    redirect_to dashboard_homes_path
  end

  private


    def home_params
      params.require(:home).permit(
        :community,
        :lot,
        :price,
        :address,
        :city,
        :state,
        :zip,
        :description,
        :sqft,
        :stories,
        :baths,
        :bedrooms,
        :garage,
        :status,
        :plan,
        :community_id,
        :latitude,
        :longitude,
        features_attributes: [:id, :name, :_destroy],
        home_images_attributes: [:id, :photo, :_destroy]
      )
    end
end
