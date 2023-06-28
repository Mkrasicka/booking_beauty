class AddPaymentToAppointments < ActiveRecord::Migration[7.0]
  def change
    # change for false later
    add_reference :appointments, :payment, null: true, foreign_key: true
  end
end
