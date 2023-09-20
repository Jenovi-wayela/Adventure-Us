class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path, notice: "Booking pending."
    else
      render :new, alert: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :experience_id)
  end

end
