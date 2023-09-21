class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
<<<<<<< HEAD

  include PgSearch::Model
  pg_search_scope :search_by_experience,
    against: [ :title, :description],
    associated_against: {
      category: [:name]
    },
    using: {
      tsearch: { prefix: true }
      }
=======
  has_many_attached :photo
>>>>>>> master
end
