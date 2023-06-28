class Employee < ApplicationRecord
  belongs_to :level
  belongs_to :user

  has_many :appointments_employees, dependent: :destroy
  has_many :appointments, through: :appointments_employees, dependent: :destroy

  has_many :employees_roles, dependent: :destroy
  has_many :roles, through: :employees_roles, dependent: :destroy
end
