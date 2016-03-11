class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.decimal :hours_left

      t.timestamps null: false
    end
  end
end
