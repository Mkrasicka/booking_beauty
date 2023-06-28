class AddServiceToAppointmentsServices < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments_services, :service, null: false, foreign_key: true
  end
end
