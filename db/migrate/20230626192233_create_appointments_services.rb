class CreateAppointmentsServices < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments_services do |t|

      t.timestamps
    end
  end
end
