class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings
  has_many :users, through: :bookings

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many_attached :photo
end
