class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end

  def create
    @buyer = User.find(params[:buyer_id])
    @service = User.find(params[:service_id])
    @offer = Offer.new(create_offer)
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
