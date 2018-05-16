class House < ApplicationRecord
  belongs_to :user

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :address, presence: true
end

