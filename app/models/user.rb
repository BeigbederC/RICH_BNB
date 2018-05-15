class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reservations
  has_many :houses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

