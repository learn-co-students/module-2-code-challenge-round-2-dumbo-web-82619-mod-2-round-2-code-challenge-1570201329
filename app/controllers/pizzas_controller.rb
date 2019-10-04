class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = doko
  end


  def new
    @pizza = Pizza.new
  end

  def create
     @pizza = Pizza.create(sore)
     if @pizza.valid?
      redirect_to pizza_path(@pizza)
     else
      flash[:errors]= @pizza.errors.full_messages
      redirect_to new_pizza_path
     end
  
  end


  private

  def doko
    Pizza.find(params[:id])
  end

  def sore
    params.require(:pizza).permit(:name, :ingredient, :restaurant_id)
  end


end
