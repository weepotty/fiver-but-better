class UsersController < ApplicationController
  # GET users/:id
  def show
    @user = User.find(params[:id])
    @month_created = Date::MONTHNAMES[@user.created_at.month]
    @username = @user.email.split('@').first
  end
end
