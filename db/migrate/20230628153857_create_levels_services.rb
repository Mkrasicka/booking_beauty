class CreateLevelsServices < ActiveRecord::Migration[7.0]
  def change
    create_table :levels_services do |t|

      t.timestamps
    end
  end
end
