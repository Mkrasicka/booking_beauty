class AppointmentsEmployee < ApplicationRecord
  belongs_to :appointment
  belongs_to :employee
end
