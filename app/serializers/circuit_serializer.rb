class CircuitSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :location, :first_grand_prix, :laps,
             :length, :race_distance, :lap_record_time, :lap_record_driver_name,
             :lap_record_year, :capacity, :opened
end
