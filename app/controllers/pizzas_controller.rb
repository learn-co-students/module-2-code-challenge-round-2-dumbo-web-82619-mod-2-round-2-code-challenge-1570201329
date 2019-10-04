class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def edit
  end

def create
  @pizza = Piner.create(params.require(:pizza).permit(:name , :ingredients))
end

def update
  #code
end


end
