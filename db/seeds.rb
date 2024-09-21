puts "Starting seeding Teams..."

teams = Team.create([
  {
    name: "Mercedes-AMG Petronas Formula One Team",
    city: "Brackley, United Kingdom",
    first_team_entry: 1954,
    world_championships: 8,
    pole_positions: 126,
    fastest_laps: 79,
    president: "Toto Wolff",
    director: "James Allison",
    chassis: "Mercedes-AMG F1 W13",
    engine: "Mercedes-AMG High Performance Powertrains",
    logo: "mercedes-logo.png",
    technical_manager: "Mike Elliott",
    tyres: "Pirelli"
  },
  {
    name: "Scuderia Ferrari",
    city: "Maranello, Italy",
    first_team_entry: 1950,
    world_championships: 16,
    pole_positions: 230,
    fastest_laps: 255,
    president: "John Elkann",
    director: "Frédéric Vasseur",
    chassis: "Ferrari SF-23",
    engine: "Ferrari 066/10",
    logo: "ferrari-logo.png",
    technical_manager: "Enrico Cardile",
    tyres: "Pirelli"
  },
  {
    name: "Red Bull Racing",
    city: "Milton Keynes, United Kingdom",
    first_team_entry: 2005,
    world_championships: 6,
    pole_positions: 87,
    fastest_laps: 78,
    president: "Christian Horner",
    director: "Pierre Waché",
    chassis: "Red Bull RB19",
    engine: "Honda RBPT",
    logo: "redbull-logo.png",
    technical_manager: "Adrian Newey",
    tyres: "Pirelli"
  }
])

puts "Seeding completed. Inserted #{teams.size} teams:"
teams.each do |team|
  puts "- #{team.name} (ID: #{team.id})"
end

# Certifique-se de que já foram criados alguns Teams para associar os Drivers corretamente.

puts "Starting seeding Drivers..."

mercedes = Team.find_by(name: "Mercedes-AMG Petronas Formula One Team")
ferrari = Team.find_by(name: "Scuderia Ferrari")
red_bull = Team.find_by(name: "Red Bull Racing")

drivers = Driver.create([
  {
    name: "Lewis Hamilton",
    abbr: "HAM",
    birthdate: "1985-01-07",
    image: "lewis-hamilton.png",
    nationality: "British",
    number: 44,
    career_points: "4162",
    winnings: 103,
    team_name: mercedes.name,
    championships: 7,
    team_id: mercedes.id
  },
  {
    name: "Charles Leclerc",
    abbr: "LEC",
    birthdate: "1997-10-16",
    image: "charles-leclerc.png",
    nationality: "Monégasque",
    number: 16,
    career_points: "837",
    winnings: 5,
    team_name: ferrari.name,
    championships: 0,
    team_id: ferrari.id
  },
  {
    name: "Max Verstappen",
    abbr: "VER",
    birthdate: "1997-09-30",
    image: "max-verstappen.png",
    nationality: "Dutch",
    number: 1,
    career_points: "2255",
    winnings: 53,
    team_name: red_bull.name,
    championships: 3,
    team_id: red_bull.id
  }
])

puts "Seeding completed. Inserted #{drivers.size} drivers:"
drivers.each do |driver|
  puts "- #{driver.name} (ID: #{driver.id})"
end

puts "Starting seeding Circuits..."

circuits = Circuit.create([
  {
    name: "Monaco Grand Prix",
    image: "monaco-gp.png",
    location: "Monte Carlo, Monaco",
    first_grand_prix: 1929,
    laps: 78,
    length: "3.337 km",
    race_distance: "260.286 km",
    lap_record_time: "1:14.260",
    lap_record_driver_name: "Lewis Hamilton",
    lap_record_year: 2019,
    capacity: 37000,
    opened: 1929
  },
  {
    name: "Silverstone Circuit",
    image: "silverstone.png",
    location: "Silverstone, United Kingdom",
    first_grand_prix: 1950,
    laps: 52,
    length: "5.891 km",
    race_distance: "306.198 km",
    lap_record_time: "1:27.097",
    lap_record_driver_name: "Max Verstappen",
    lap_record_year: 2020,
    capacity: 150000,
    opened: 1948
  },
  {
    name: "Circuit de Spa-Francorchamps",
    image: "spa.png",
    location: "Stavelot, Belgium",
    first_grand_prix: 1925,
    laps: 44,
    length: "7.004 km",
    race_distance: "308.052 km",
    lap_record_time: "1:46.286",
    lap_record_driver_name: "Valtteri Bottas",
    lap_record_year: 2018,
    capacity: 70000,
    opened: 1921
  }
])

puts "Seeding completed. Inserted #{circuits.size} circuits:"
circuits.each do |circuit|
  puts "- #{circuit.name} (ID: #{circuit.id})"
end
