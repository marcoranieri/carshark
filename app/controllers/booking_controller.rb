class BookingsController < ApplicationController

  before_filter :find_user
  before_filter :find_car

def build_booking
  @booking = Booking.new
end

def new
    @booking = @user.build_booking(params[:booking])
  end

  def create
    @reservation = @user.build_booking(params[:booking].merge(:car_id => params[:car_id]))
    if @booking.save
      flash[:notice] = "booking has been created successfully"
      redirect_to [@user, @car]
    else
      render :new
    end
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_car
    @car = Car.find(params[:car_id])
  end
end
end

