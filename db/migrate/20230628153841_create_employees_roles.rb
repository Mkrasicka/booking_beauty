class CreateEmployeesRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :employees_roles do |t|

      t.timestamps
    end
  end
end
