class Service < ApplicationRecord
  has_many :clients, dependent: :destroy
  has_many :employees, dependent: :destroy

  belongs_to :department

  has_many :levels_services, dependent: :destroy
  has_many :levels, through: :levels_services, dependent: :destroy

  has_many :appointments_services, dependent: :destroy
  has_many :appointments, through: :appointments_services, dependent: :destroy
end
