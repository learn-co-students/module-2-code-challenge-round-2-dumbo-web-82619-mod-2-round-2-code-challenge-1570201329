class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
    @restaurants = Restaurant.all
    
  end

  
end
