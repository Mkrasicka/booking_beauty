class CreateJoinTableEmployeeAppointment < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :appointments do |t|
      # t.index [:employee_id, :appointment_id]
      # t.index [:appointment_id, :employee_id]
    end
  end
end
