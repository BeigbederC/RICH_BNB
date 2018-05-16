class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :guests_number, presence: true
  validates :start_booked_at, :end_booked_at, presence: true
end
