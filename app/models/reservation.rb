class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :guest_number, presence: true
  validates :reservation_date, presence: true
end
