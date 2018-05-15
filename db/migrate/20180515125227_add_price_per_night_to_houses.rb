class AddPricePerNightToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :price_per_night, :integer
  end
end
