class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :destroy, :edit, :update]
  
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

  def new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
