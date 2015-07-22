class ReviewsController < ApplicationController

 before_action :review_params, only: [:create]
  def new
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.new
  end

  def index
    @reviews = Review.all
    @hotels = Hotel.all
  end

  def create
    hotel = Hotel.find(params[:hotel_id])
    @review = hotel.reviews.create(review_params)
    @review.title = current_user.email
    respond_to do |format|
    if @review.save
      format.html { redirect_to root_path }
    end
    end
  end

  private 

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :comment, :rating)
  end

end
