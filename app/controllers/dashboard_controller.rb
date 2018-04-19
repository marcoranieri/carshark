class DashboardController < ApplicationController
  def show
    @user = current_user
    @cars = @user.cars
    @bookings = @user.bookings
  end
end
