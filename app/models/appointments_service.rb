class AppointmentsService < ApplicationRecord
  belongs_to :appointment
  belongs_to :service
end
