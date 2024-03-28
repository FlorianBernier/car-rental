class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = @car.bookings.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @car, notice: "Réservation créée avec succès."
    else
      redirect_to @car, notice: "La réservation n'a pas pu être créé."
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end

end
