class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def create
    @review = current_user.reviews.create(review_params)
    redirect_to @review.vet
  end

  def destroy
    @review = Review.find(params[:id])
    vet = @review.vet
    @review.destroy
    redirect_to vet
  end

  private
    def review_params
      params.require(:review).permit(:comment, :star, :vet_id, :user_id, :reviewanimal, :treatment, :reviewmore, :picture)
    end
end