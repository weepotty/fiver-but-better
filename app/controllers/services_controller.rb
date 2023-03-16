class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:category]
      @category = params[:category]
      @services = policy_scope(Service).where(category: @category)
    elsif params[:query]
      @query = params[:query]
      @services = policy_scope(Service).search_by_title(@query)
    else
      @services = Service.all
      @services = policy_scope(Service)
    end
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service[:price] = @service[:price].to_i * 100
    @service.seller = current_user
    authorize @service

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
