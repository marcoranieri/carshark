class CarsController < ApplicationController
  before_action :set_car, only: [ :show ]

  def index

    if params.has_key?(:q)
# search in SQL if found name containing anywhere(%) the value of research
      @cars = Car.where('model LIKE ?', "%#{params[:q]}%")
    else
      @cars = Car.all
    end

  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :photo)
  end
end

