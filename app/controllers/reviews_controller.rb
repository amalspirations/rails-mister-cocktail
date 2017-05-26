class ReviewsController < ApplicationController
  before_action :set_cocktail
  before_action :review_params, only: [:create]

  def index
    @reviews = @cocktail.reviews
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render "cocktails/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
