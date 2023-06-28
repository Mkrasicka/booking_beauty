class RemoveRoleIdFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_reference :employees, :role, foreign_key: true
  end
end
