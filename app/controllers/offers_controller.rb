class OffersController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(create_offer)
    # convert input to cents
    @offer[:final_price] = create_offer[:final_price].to_i * 100

    @offer.buyer = current_user
    @service = Service.find(params[:service_id])
    @offer.service = @service

    if @offer.save
      redirect_to service_path(@service), notice: "Offer was successfully created"
    else
      render :new, status: :unprocessable_entity, alert: "Please fill in the required field"
    end
  end

  private

  def create_offer
    params.require(:offer).permit(:final_price, :final_delivery_time, :description, :buyer_id, :service_id)
  end
end
