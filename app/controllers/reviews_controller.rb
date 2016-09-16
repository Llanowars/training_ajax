class ReviewsController < ApplicationController
  
  before_action :set_restaurant, only: [:create, :destroy]

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'restaurant/show' }
        format.js
      end
    end  
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private 

  def review_params
    params.require(:review).permit(:content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
