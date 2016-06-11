class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.integer :zipcode
      t.string :state
      t.string :city
      t.string :address_line_2
      t.integer :garage_code
      t.string :phone_number
      t.string :address_line_1
      t.string :name

      t.timestamps

    end
  end
end
