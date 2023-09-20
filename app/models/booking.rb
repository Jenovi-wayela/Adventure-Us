class Booking < ApplicationRecord
  belongs_to :experience
  belongs_to :user

  enum status: {
    pending: 0,
    confirmed: 1,
    rejected: 2
  }
end
