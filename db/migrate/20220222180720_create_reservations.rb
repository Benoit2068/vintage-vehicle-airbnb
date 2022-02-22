class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.text :comment
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
