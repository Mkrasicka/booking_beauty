class AddRoleIdToEmployees < ActiveRecord::Migration[7.0]
  def change

    # change for false later
    add_reference :employees, :role, null: true, foreign_key: true
  end
end
