class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.starts_at.nil? || @booking.ends_at.nil?
      redirect_to @car, notice: "The reservation could not be created. The start date and end date are required."
    elsif @booking.starts_at < Date.today
      redirect_to @car, notice: "The reservation could not be created. The start date must be in the future."
    elsif @booking.ends_at < @booking.starts_at
      redirect_to @car, notice: "The reservation could not be created. The end date must be after the start date."
    elsif @booking.save
      redirect_to @car, notice: "Reservation created successfully."
    else
      redirect_to @car, notice: "The reservation could not be created."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end

end
