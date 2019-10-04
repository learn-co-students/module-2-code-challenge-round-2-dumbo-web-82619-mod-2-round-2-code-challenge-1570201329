class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = find_me
    @pizzas = @restaurant.pizzas
  end






  private

  def find_me
    Restaurant.find(params[:id])
  end

end
