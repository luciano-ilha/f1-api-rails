class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :first_team_entry, :world_championships,
             :pole_positions, :fastest_laps, :president, :director,
             :chassis, :engine, :logo, :technical_manager, :tyres

  has_many :drivers
end
