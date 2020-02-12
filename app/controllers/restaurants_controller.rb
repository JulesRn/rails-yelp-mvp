class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
