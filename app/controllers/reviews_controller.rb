class ReviewsController < ApplicationController

 before_action :review_params, only: [:create]
  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
    @review.title = current_user.email
    if @review.save
      redirect_to root_path
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
