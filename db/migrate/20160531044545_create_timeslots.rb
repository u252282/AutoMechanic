class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.string :job_id
      t.integer :mechanic_id
      t.datetime :timeslot

      t.timestamps

    end
  end
end
