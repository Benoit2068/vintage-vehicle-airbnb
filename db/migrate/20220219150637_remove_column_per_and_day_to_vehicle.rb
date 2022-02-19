class RemoveColumnPerAndDayToVehicle < ActiveRecord::Migration[6.1]
  def change
    remove_column :vehicles, :day
    remove_column :vehicles, :per
    rename_column :vehicles, :preis, :price
  end
end
