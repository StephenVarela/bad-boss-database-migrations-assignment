class EditLocationsColumns < ActiveRecord::Migration[5.2]
  def up
      remove_column :new_locations, :name
      remove_column :new_locations, :address
      remove_column :new_locations, :capacity
      add_column :new_locations, :city, :string
      add_column :new_locations, :weather, :string
  end

  def down
    add_column :new_locations, :name, :string
    add_column :new_locations, :address, :string
    add_column :new_locations, :capacity, :integer
    remove_column :new_locations, :city
    remove_column :new_locations, :weather
  end
end
