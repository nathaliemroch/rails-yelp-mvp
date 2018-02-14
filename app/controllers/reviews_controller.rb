class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    #todo build review
    # instanciate a new review
    @review = Review.new(review_params)
    # find restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # associate review and restaurant
    @review.restaurant = @restaurant # = @review.restaurant.id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
