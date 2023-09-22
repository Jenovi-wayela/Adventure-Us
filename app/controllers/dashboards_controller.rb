class DashboardsController < ApplicationController
  def show
    @bookings = current_user.bookings # Load the user's bookings
    @listings = Experience.where(user_id: current_user.id) # Load the user's listings (experiences)
  end
end
