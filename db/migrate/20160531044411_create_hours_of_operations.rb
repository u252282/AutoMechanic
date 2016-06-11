class CreateHoursOfOperations < ActiveRecord::Migration
  def change
    create_table :hours_of_operations do |t|
      t.integer :garage_id
      t.integer :close_time
      t.integer :open_time
      t.string :day_of_the_week

      t.timestamps

    end
  end
end
