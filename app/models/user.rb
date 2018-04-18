class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :bookings
  has_many :cars, dependent: :destroy
  has_many :rented_cars, through: :bookings, source: :car

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :name, :surname, presence: true, length: {maximum: 50}
end

