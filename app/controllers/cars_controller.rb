class CarsController < ApplicationController
  def index
    @cars = Car.all

    if params[:city].present? && params[:query].present?
      @cars = Car.where("address ILIKE ?", "%#{params[:city]}%")
        .where("brand ILIKE ?", "%#{params[:query]}%")
    elsif params[:city].present?
      @cars = Car.where("address ILIKE ?", "%#{params[:city]}%")
    elsif params[:query].present?
      @cars = Car.where("brand ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @car = Car.find(params[:id])
    @bookings = @car.bookings
    @booking = Booking.new
  end
end
