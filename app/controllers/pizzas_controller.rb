class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
   
  end

  def new

    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @za =params.require(:pizza).permit(:restaurant_id, :name, :ingredients)
   @za =Pizza.create(@za)
    redirect_to restaurant_path(@za.restaurant_id)
  end 
end
