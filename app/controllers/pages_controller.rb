class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # logic from services#index
    if params[:category].present?
      @category = params[:category]
      @services = policy_scope(Service).where(category: @category)
    else
      @services = Service.all
      @services = policy_scope(Service)
    end
  end
end
