class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = find_me
    
  end

  def new
    # byebug
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.create(permission)
    # redirect_to pizza_path(@pizza.id)
  end






  private

  def find_me
    Pizza.find(params[:id])
  end

  def permission
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end


end
