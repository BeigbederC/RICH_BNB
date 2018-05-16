class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :guests_number, presence: true
  validates :start_booked_at, :end_booked_at, presence: true

  def price
    nb_of_days = (end_booked_at - start_booked_at).round
    return house.price_per_night if nb_of_days.zero?
    house.price_per_night * nb_of_days
  end
end

