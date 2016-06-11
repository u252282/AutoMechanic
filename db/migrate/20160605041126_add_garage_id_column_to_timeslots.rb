class AddGarageIdColumnToTimeslots < ActiveRecord::Migration
  def change
    add_column :timeslots, :garage_id, :integer
  end
end
