class CreateJoinTableServiceLevel < ActiveRecord::Migration[7.0]
  def change
    create_join_table :services, :levels do |t|
      # t.index [:service_id, :level_id]
      # t.index [:level_id, :service_id]
    end
  end
end
