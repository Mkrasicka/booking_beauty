class Level < ApplicationRecord
  has_many :levels_services, dependent: :destroy
  has_many :services, through: :levels_services, dependent: :destroy

  belongs_to :employee
end
