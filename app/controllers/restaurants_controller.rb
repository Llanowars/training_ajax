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

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      respond_to do |format|
        format.html { redirect_to restaurants_path }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'restaurant/index' }
        format.js
      end
    end
  end
  
  def destroy
    @restaurant.destroy
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def upvote
    @product = Restaurant.find(params[:id])
    if current_user.voted_for? @product
      current_user.unvote_for @product
    else
      current_user.up_votes @product
    end
  end


  private 

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  
end
