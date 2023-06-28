class Role < ApplicationRecord
  has_many :employees_roles, dependent: :destroy
  has_many :employees, through: :employees_roles, dependent: :destroy
end
