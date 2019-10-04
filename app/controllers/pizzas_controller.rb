class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.create(pizza_params)

    if @pizza.valid?
    redirect_to pizza_path(@pizza)
    else 
      flash[:error] = "Name already exists please enter a new one."
      redirect_to new_pizza_path
    end
    
  end

  def show
    @pizza = Pizza.find(params[:id])
  end
  
  private

  def pizza_params
    params.require(:pizza).permit(:restaurant_id, :name, :ingredients)
  end
  
end
