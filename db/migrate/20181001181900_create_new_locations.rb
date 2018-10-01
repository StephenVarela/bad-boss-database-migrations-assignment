class CreateNewLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :new_locations do |t|
      t.string :name
      t.string :address
      t.integer :capacity
    end
  end
end
