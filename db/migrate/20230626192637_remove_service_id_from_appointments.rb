class RemoveServiceIdFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :service_id
  end
end
