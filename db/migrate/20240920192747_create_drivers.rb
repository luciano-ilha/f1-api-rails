class CreateDrivers < ActiveRecord::Migration[7.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :abbr
      t.string :birthdate
      t.string :image
      t.string :nationality
      t.integer :number
      t.string :career_points
      t.integer :winnings
      t.string :team_name
      t.integer :championships
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
