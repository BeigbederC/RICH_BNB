class RemovePriceFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :price
  end
end
