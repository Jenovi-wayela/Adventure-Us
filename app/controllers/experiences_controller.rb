class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @categories = Category.all
    @results = search if params[:query].present?
  end

  def new
    @experience = Experience.new
    @category_names = Category.pluck(:name, :id)

  end


  def create
    @experience = Experience.new(experience_params)
    @experience.category_id = params[:experience][:category_id]
    @experience.user_id = current_user.id

    if params[:experience][:image].present?
    else
      @experience.image = '/app/assets/images/default experience.jpg'
    end

<<<<<<< HEAD
    if @experience.save
      redirect_to dashboard, notice: 'Experience was successfully created.'
=======
    if @experience.save!
      redirect_to dashboard_path, notice: 'Experience was successfully created.'
>>>>>>> master
    else
      render :new
    end
  end

  def search
    if params[:query].present?
      @results = Experience.search_by_experience(params[:query])
    else
      @results = Experience.all
    end
  end

  def show
    @experience = Experience.find(params[:id])
    @booking = Booking.new
    @users = @experience.users

    @markers = @experience.geocode.map do |experience|
      {
        lat: @experience.latitude,
        lng: @experience.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { experience: experience }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end


  private

  def experience_params
    params.require(:experience).permit(:title, :description, :date, :location, :capacity, :price, :image, :category_id)
  end
end
