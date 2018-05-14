class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reservations
  has_many :houses

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
