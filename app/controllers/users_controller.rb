class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :user_offers

  # GET users/:id
  def show
    @user = User.find(params[:id])
    @month_created = Date::MONTHNAMES[@user.created_at.month]
    authorize @user
  end

  private

  def user_offers
    @offers = policy_scope(Offer)
  end
end
