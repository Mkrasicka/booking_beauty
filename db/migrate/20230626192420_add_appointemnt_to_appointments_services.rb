class AddAppointemntToAppointmentsServices < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments_services, :appointment, null: false, foreign_key: true
  end
end
