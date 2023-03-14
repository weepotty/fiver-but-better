class OffersController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(create_offer)
    @offer[:final_price] = create_offer[:final_price].to_i * 100
    # for when login fucntionality is in place
    # @offer.buyer = current_user
    @offer.buyer = User.find(5)

    @service = Service.find(params[:service_id])

    # will be running another migration afterwhich we can remove the method immediately below
    @offer.status.capitalize!

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
