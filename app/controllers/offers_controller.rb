class OffersController < ApplicationController
  def new
    @service = Service.find(params[:id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(create_offer)
    @offer.buyer = User.find(params[:buyer_id])
    @offer.service = Service.find(params[:service_id])
    if @offer.save
      redirect_to service_path(@service)
    else
      render :new, status: :unprocesable_entity
    end
  end

  private

  def create_offer
    params.require(:offer).permit(:final_price, :final_delivery_time, :buyer_id, :service_id)
  end
end
