class CreateJobLists < ActiveRecord::Migration
  def change
    create_table :job_lists do |t|
      t.integer :job_type_id
      t.integer :job_id

      t.timestamps

    end
  end
end
