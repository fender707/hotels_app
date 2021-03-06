class ReviewsController < ApplicationController

 before_action :set_hotel,:review_params, only: [:create]

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @review = Review.new
  end

  def index
    @reviews = Review.all
  end

  def create
    hotel = Hotel.find(params[:hotel_id])
    @review = hotel.reviews.create(review_params)
    @review.title = current_user.email
    if @review.save
      redirect_to root_path 
    else
      render action: 'new' 
    end
  end

  private 

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def review_params
    params.require(:review).permit(:title, :comment, :rating)
  end

end
