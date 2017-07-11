class HomesController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def delete
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
      :garage,
      :status
    )
  end
end
