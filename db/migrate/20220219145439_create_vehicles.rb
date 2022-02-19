class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.text :description
      t.string :preis
      t.string :per
      t.integer :day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
