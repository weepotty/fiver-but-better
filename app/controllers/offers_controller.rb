class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
  end

  private

  def offer_params
    params.require(:offer).permit(:final_price, :final_delivery_time, :status, :buyer_id, :service_id)
  end
end
