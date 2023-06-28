class RemoveUserFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :appointments, :user, null: false, foreign_key: true
  end
end
