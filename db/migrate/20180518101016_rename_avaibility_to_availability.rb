class RenameAvaibilityToAvailability < ActiveRecord::Migration[5.1]
  def change
    rename_column :houses, :avaibility, :availability
  end
end
