class Employee < ApplicationRecord
  belongs_to :level
  belongs_to :user
end
