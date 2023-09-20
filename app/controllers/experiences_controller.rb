class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @experiences = Experience.all
    @markers = @experiencess.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude
      }
  end

  def new
    @experience = Experience.new
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
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
