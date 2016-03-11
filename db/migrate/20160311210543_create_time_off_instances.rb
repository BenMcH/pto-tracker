class CreateTimeOffInstances < ActiveRecord::Migration
  def change
    create_table :time_off_instances do |t|
      t.integer :employee_id
      t.decimal :hours_used

      t.timestamps null: false
    end
  end
end
