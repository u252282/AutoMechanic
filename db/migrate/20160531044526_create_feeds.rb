class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.integer :job_id
      t.string :comment

      t.timestamps

    end
  end
end
