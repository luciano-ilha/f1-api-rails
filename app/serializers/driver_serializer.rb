class DriverSerializer < ActiveModel::Serializer
  attributes :id, :name, :abbr, :birthdate, :image,
             :nationality, :number, :career_points,
             :winnings, :team_name, :championships

  belongs_to :team
end
