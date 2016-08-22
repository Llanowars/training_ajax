class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :destroy]
  
  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def show
    set_restaurant
    @review = Review.new
  end

  def destroy
    @restaurant.destroy
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to root_path
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
