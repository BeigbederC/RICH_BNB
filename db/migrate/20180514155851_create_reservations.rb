class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :price
      t.integer :guests_number
      t.date :start_booked_at
      t.date :end_booked_at
      t.references :user, foreign_key: true
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
