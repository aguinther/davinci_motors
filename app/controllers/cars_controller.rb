class CarsController < ApplicationController
  before_action :find_car, only: [:edit, :update]

  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(car_params)
    message = "#{@car.year} #{@car.make} #{@car.model} has been created"
    if @car.save
      redirect_to cars_path,
        notice: message
    end
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def update
    message = "#{@car.year} #{@car.make} #{@car.model} has been edited"
    if @car.update(car_params)
      redirect_to cars_path,
        notice: message
    end
  end

  def find_car
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:year, :make, :model, :price)
  end

end
