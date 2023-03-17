class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :user_offers

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

  private

  def user_offers
    @offers = policy_scope(Offer)
  end
end
