class RestaurantsController < ApplicationController
  def index
    # if params[:search]
    #   @restaurants = Restaurant.where('name LIKE ?', "%#{params[:search]}%")
    # else
    # @restaurants = Restaurant.all
    # end

   
      @restaurants = if params[:search]
        Restaurant.where('name LIKE ?', "%#{params[:search]}%")
      else
        Restaurant.all
      end
    
  end

  def new
    @restaurant = Restaurant.new
  end


  def show
    @restaurant = Restaurant.find(params[:id])
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :search)
  end
end
