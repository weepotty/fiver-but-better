class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  # GET users/:id
  def show
    @user = User.find(params[:id])
    @month_created = Date::MONTHNAMES[@user.created_at.month]
    authorize @user
  end
end
