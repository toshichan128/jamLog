class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @live_house = LiveHouse.find(params[:live_house_id])
    @reviews = @live_house.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to live_house_reviews_path(@review.live_house)
    else
      @live_house = LiveHouse.find(params[:id])
      render  "live_house/show"
    end
  end

  def review_params
    params.require(:review).permit(:live_house_id, :score, :content)
  end
end
