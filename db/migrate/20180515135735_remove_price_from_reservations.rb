class RemovePriceFromReservations < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservations, :price, :integer
  end
end
