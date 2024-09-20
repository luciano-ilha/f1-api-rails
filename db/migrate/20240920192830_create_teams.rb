class CreateTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.integer :first_team_entry
      t.integer :world_championships
      t.integer :pole_positions
      t.integer :fastest_laps
      t.string :president
      t.string :director
      t.string :chassis
      t.string :engine
      t.string :logo
      t.string :technical_manager
      t.string :tyres

      t.timestamps
    end
  end
end
