class House < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :reservations

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :address, presence: true
end

