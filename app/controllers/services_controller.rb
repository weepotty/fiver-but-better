class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service[:price] = @service[:price].to_i * 100
    @service.seller = current_user

    if @service.save
      redirect_to service_path(@service), notice: "Service was successfully created"
    else
      render :new, status: :unprocessable_entity, alert: "Please fill in the required fields"
    end
  end

  private

  def service_params
    params.require(:service).permit(:title, :description, :category, :price, :delivery_time, :photo)
  end
end
