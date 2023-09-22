class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @experience = Experience.find(booking_params[:experience_id])
    @booking = Booking.new(user: current_user, experience: @experience)

    if @booking.save
      redirect_to dashboard_path, notice: "Booking reserved."
    else
      render :new, alert: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :experience_id)
  end

end
