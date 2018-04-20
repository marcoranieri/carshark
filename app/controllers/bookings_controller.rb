class BookingsController < ApplicationController

  def index
    @car = Car.find(params[:car_id])
    @bookings = @car.bookings.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bookings }
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @car = @booking.car
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "cars/show"
    end
  end

  def edit
  end

  # Here we confirm or decline booking by changing its status
  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_date, :ends_date)
  end

end
