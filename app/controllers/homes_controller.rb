class HomesController < ApplicationController

  def index
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to dashboard_homes_path
    else
      redirect_to dashboard_new_home_path
    end
  end

  def show
  end

  def edit
  end

  def delete
  end

  def destroy
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
        home_images_attributes: [:id, :photo, :home_id]
      )
    end
end
