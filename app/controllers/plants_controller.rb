class PlantsController < ApplicationController

  def index
    plants = Plant.all
    render json: plants
  end

  def show
    plant = Plant.find_by(plant_create_params)
    render json: plant
  end

  private

  def plant_create_params
    params.permit(:name, :image, :price)
  end

end
