class DashboardsController < ApplicationController
  def index
    @bookings = current_user.bookings # Load the user's bookings
    @listings = current_user.experiences # Load the user's listings (experiences)
  end
end
