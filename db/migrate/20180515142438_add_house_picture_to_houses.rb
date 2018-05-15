class AddHousePictureToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :house_picture, :string
  end
end
