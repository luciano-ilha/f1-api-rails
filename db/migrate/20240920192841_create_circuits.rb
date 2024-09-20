class CreateCircuits < ActiveRecord::Migration[7.2]
  def change
    create_table :circuits do |t|
      t.string :name
      t.string :image
      t.string :location
      t.integer :first_grand_prix
      t.integer :laps
      t.string :length
      t.string :race_distance
      t.string :lap_record_time
      t.string :string
      t.string :lap_record_driver_name
      t.string :lap_record_year
      t.integer :capacity
      t.integer :opened

      t.timestamps
    end
  end
end
