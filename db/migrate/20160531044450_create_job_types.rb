class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.integer :repair_time_minutes
      t.string :description
      t.string :name

      t.timestamps

    end
  end
end
