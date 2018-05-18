class House < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :address, presence: true
end

