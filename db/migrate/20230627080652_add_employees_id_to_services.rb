class AddEmployeesIdToServices < ActiveRecord::Migration[7.0]
  def change
    add_reference :services, :employee, null: false, foreign_key: true
  end
end
