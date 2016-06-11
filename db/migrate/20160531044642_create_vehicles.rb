class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :customer_id
      t.string :notes
      t.string :color
      t.string :mileage
      t.string :year
      t.string :model
      t.string :make

      t.timestamps

    end
  end
end
