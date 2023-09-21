class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new

    @markers = @experience.geocode.map do |experience|
      {
        lat: @experience.latitude,
        lng: @experience.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { experience: experience }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to @experience, notice: 'Experience was successfully created.'
    else
      render :new
    end
  end

  private

  def experience_params
    params.require(:experience).permit(:title, :description, :date, :location, :capacity, :price)
  end

end
