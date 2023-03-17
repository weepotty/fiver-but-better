class ReviewsController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @review = Review.new
  end

  def create
    @service = Service.find(params[:service_id])
    @review = Review.new(review_params)

    @review.service = @service
    @review.save

    if @review.save
      redirect_to service_path(@service)
    else
      redirect_to service_offer_path(service_id: @service.id, id: @service.offers.last.id), status: :unprocessable_entity
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
