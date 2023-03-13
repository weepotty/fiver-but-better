class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @month_created = Date::MONTHNAMES[@user.created_at.month]
    @online = online?
    @username = @user.email.split('@').first
  end

  private

  def online?
    @user.updated_at < 2.minutes.ago
  end
end
