class OffersController < ApplicationController
  def show
    @service = Service.find(params[:service_id])
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def new
    @service = Service.find(params[:service_id])
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(create_offer)
    # convert input to cents
    @offer[:final_price] = create_offer[:final_price].to_i * 100

    @offer.buyer = current_user
    @service = Service.find(params[:service_id])
    @offer.service = @service

    authorize @offer
    check_offer_validity(@offer, @service)
  end

  private

  def create_offer
    params.require(:offer).permit(:final_price, :final_delivery_time, :description, :buyer_id, :service_id)
  end

  def check_offer_validity(offer, service)
    if offer.save
      redirect_to service_offer_path(service, offer)
    elsif !offer.valid?
      redirect_to new_service_offer_path(service), alert: "You already have this package"
    else
      render :new, status: :unprocessable_entity, alert: "Please fill in the required field"
    end
  end
end
