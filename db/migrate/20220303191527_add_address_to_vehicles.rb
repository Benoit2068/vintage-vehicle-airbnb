class AddAddressToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :address, :float
  end
end
