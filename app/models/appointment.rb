class Appointment < ApplicationRecord
  belongs_to :user

  has_many :appointments_employees, dependent: :destroy
  has_many :employees, through: :appointments_employees, dependent: :destroy

  has_many :appointments_services, dependent: :destroy
  has_many :services, through: :appointments_services, dependent: :destroy
end
