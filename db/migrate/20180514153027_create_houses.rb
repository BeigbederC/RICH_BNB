class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.text :description
      t.string :address
      t.boolean :avaibility, default: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
