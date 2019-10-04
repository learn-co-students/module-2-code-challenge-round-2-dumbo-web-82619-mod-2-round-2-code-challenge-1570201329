class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = doko
  end


  private

  def doko
    Restaurant.find(params[:id])
  end

  def sore
    params.require[:restaurant].permit(:name, :address)
  end


end
