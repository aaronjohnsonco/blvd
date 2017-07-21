class HomesController < ApplicationController

  def index
    @homes = Home.all
  end



  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to dashboard_homes_path
    else
      redirect_to dashboard_new_home_path
    end
  end



  def edit
    @home = Home.find(params[:id])
  end

  def delete
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    redirect_to homes_path
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
        :plan
      )
    end
end
