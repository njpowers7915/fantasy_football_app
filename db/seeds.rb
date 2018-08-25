# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positions = Position.create([{name: 'HOOKER'}, {name: 'FRONT ROW'},
  {name: 'SECOND ROW'}, {name: 'HALF'}, {name: 'CENTRE'}, {name: 'OUTSIDE BACK'}])

Player.create(name: 'Damien Cook', position_id: 1, salary: 3, pro_team: 'Rabbitohs')
Player.create(name: 'Cam Smith', position_id: 1, salary: 2, pro_team: 'Storm')
Player.create(name: 'Jake Friend', position_id: 1, salary: 2, pro_team: 'Roosters')
Player.create(name: 'Connor Watson', position_id: 1, salary: 1, pro_team: 'Knights')

Player.create(name: 'Andrew Fifita', position_id: 2, salary: 3, pro_team: 'Sharks')
Player.create(name: 'Josh Papalii', position_id: 2, salary: 2, pro_team: 'Raiders')
Player.create(name: 'David Klemmer', position_id: 2, salary: 2, pro_team: 'Bulldogs')
Player.create(name: 'Korbin Sims', position_id: 2, salary: 1, pro_team: 'Broncos')

Player.create(name: 'Jake Trbojevic', position_id: 3, salary: 3, pro_team: 'Sea Eagles')
Player.create(name: 'Angus Crichton', position_id: 3, salary: 2, pro_team: 'Rabbitohs')
Player.create(name: 'Jason Taumalolo', position_id: 3, salary: 2, pro_team: 'Cowboys')
Player.create(name: 'Paul Gallen', position_id: 3, salary: 1, pro_team: 'Sharks')

Player.create(name: 'Nathan Cleary', position_id: 4, salary: 3, pro_team: 'Panthers')
Player.create(name: 'Ben Hunt', position_id: 4, salary: 2, pro_team: 'Dragons')
Player.create(name: 'Cooper Cronk', position_id: 4, salary: 2, pro_team: 'Roosters')
Player.create(name: 'Mitchell Moses', position_id: 4, salary: 1, pro_team: 'Eels')

Player.create(name: 'Latrell Mitchell', position_id: 5, salary: 3, pro_team: 'Roosters')
Player.create(name: 'Tyrone Peachey', position_id: 5, salary: 2, pro_team: 'Panthers')
Player.create(name: 'Greg Inglis', position_id: 5, salary: 2, pro_team: 'Rabbitohs')
Player.create(name: 'Nene Macdonald', position_id: 5, salary: 1, pro_team: 'Dragons')

Player.create(name: 'Valentine Holmes', position_id: 6, salary: 3, pro_team: 'Sharks')
Player.create(name: 'Jarryd Hayne', position_id: 6, salary: 2, pro_team: 'Eels')
Player.create(name: 'Blake Ferguson', position_id: 6, salary: 2, pro_team: 'Roosters')
Player.create(name: 'Josh Dugan', position_id: 6, salary: 1, pro_team: 'Sharks')
