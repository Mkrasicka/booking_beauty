class Payment < ApplicationRecord
  has_many :appointments, dependent: :destroy
end
