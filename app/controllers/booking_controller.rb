class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id])

    @booking.start_date = parse_date(params[:start_date])
    @booking.end_date = parse_date(params[:end_date])
  end

  def parse_date date_str
    @dmy = date_str.split("-")[0].split("/")
    @hm = date_str.split("-")[1].split(":")
    DateTime.new.change(:day => @dmy[0].to_i, :month => @dmy[1].to_i, :year => @dmy[2].to_i, :hour => @hm[0].to_i, :minutes => @hm[1] )
  end

  def create


    @booking = Booking.new(params[:booking])
    @booking.car_id = params[:car_id]

    @start_date = DateTime.new.change(
      :year => params[:start_date][:year].to_i,
      :month => params[:start_date][:month].to_i,
      :day => params[:start_date][:day].to_i,
      :hour => params[:start_date][:hour].to_i,
      :minutes => params[:start_date][:minute].to_i)

    @end_date = DateTime.new.change(
      :year => params[:end_date][:year].to_i,
      :month => params[:end_date][:month].to_i,
      :day => params[:end_date][:day].to_i,
      :hour => params[:end_date][:hour].to_i,
      :minutes => params[:end_date][:minute].to_i)

    @booking.start_date = @start_date
    @booking.end_date = @end_date

    respond_to do |format|
      if @booking.save
        format.html { redirect_to car_bookings_path, :notice => 'Booking was successfully created.' }
        format.json { render :json => @booking, :status => :created, :location => @booking }
      else
        format.html { render :action => "new" }
        format.json { render :json => @booking.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update

    @booking = Booking.find(params[:id])


    respond_to do |format|
      if @booking.update_attributes(params[:booking])

        @start_date = DateTime.new.change(
          :year => params[:start_date][:year].to_i,
          :month => params[:start_date][:month].to_i,
          :day => params[:start_date][:day].to_i,
          :hour => params[:start_date][:hour].to_i,
          :minutes => params[:start_date][:minute].to_i)

        @end_date = DateTime.new.change(
          :year => params[:end_date][:year].to_i,
          :month => params[:end_date][:month].to_i,
          :day => params[:end_date][:day].to_i,
          :hour => params[:end_date][:hour].to_i,
          :minutes => params[:end_date][:minute].to_i)

        @booking.start_date = @start_date
        @booking.end_date = @end_date
        @booking.save

        format.html { redirect_to car_bookings_path(@booking.car), :notice => 'Booking was successfully updated.' }
        format.json { render :json => @booking, :status => :created, :location => @booking }
      else
        format.html { render :action => "new" }
        format.json { render :json => @booking.errors, :status => :unprocessable_entity }
      end
    end

  end

  def edit
     @booking = Booking.find(params[:id])
     @booking.start_date = parse_date(params[:start_date])
     @booking.end_date = parse_date(params[:end_date])
     @car = @booking.car
  end

  def destroy
  end


  def index
    @car = Car.find(params[:car_id])
    @bookings = @car.bookings.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bookings }
    end
  end

  def show
    #@car = car.find(params[:car_id])
    @booking = Booking.find(params[:id])
    @car = @booking.car
  end
end
