class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @services = Service.all
    @services = policy_scope(Service)
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
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
