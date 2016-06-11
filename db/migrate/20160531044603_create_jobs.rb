class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.boolean :completed
      t.boolean :started
      t.integer :vehicle_id

      t.timestamps

    end
  end
end
