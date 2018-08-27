# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positions = Position.create([{name: 'QB'}, {name: 'RB'},
  {name: 'WR'}, {name: 'TE'}, {name: 'Defense'}])

Player.create(name: 'Aaron Rogers', position_id: 1, salary: 3, pro_team: 'Packers')
Player.create(name: 'Kurt Cousins', position_id: 1, salary: 2, pro_team: 'Vikings')
Player.create(name: 'Ben Roethlisberger', position_id: 1, salary: 2, pro_team: 'Steelers')
Player.create(name: 'Eli Manning', position_id: 1, salary: 1, pro_team: 'Giants')

Player.create(name: 'Todd Gurley', position_id: 2, salary: 3, pro_team: 'Rams')
Player.create(name: 'David Johnson', position_id: 2, salary: 2, pro_team: 'Cardinals')
Player.create(name: 'Saquon Barkley', position_id: 2, salary: 2, pro_team: 'Giants')
Player.create(name: 'Gio Bernard', position_id: 2, salary: 1, pro_team: 'Bengals')

Player.create(name: 'Odell Beckham Jr', position_id: 3, salary: 3, pro_team: 'Giants')
Player.create(name: 'Jarvis Landry', position_id: 3, salary: 2, pro_team: 'Browns')
Player.create(name: 'Larry Fitzgerald', position_id: 3, salary: 2, pro_team: 'Cardinals')
Player.create(name: 'Chris Hogan', position_id: 3, salary: 1, pro_team: 'Patriots')

Player.create(name: 'Rob Gronkowski', position_id: 4, salary: 3, pro_team: 'Patriots')
Player.create(name: 'Travis Kelcy', position_id: 4, salary: 2, pro_team: 'Chiefs')
Player.create(name: 'Greg Olsen', position_id: 4, salary: 2, pro_team: 'Panthers')
Player.create(name: 'Jimmy Graham', position_id: 4, salary: 1, pro_team: 'Packers')

Player.create(name: 'Panthers Defense', position_id: 5, salary: 3, pro_team: 'Panthers')
Player.create(name: 'Seahawks Defense', position_id: 5, salary: 2, pro_team: 'Seahawks')
Player.create(name: 'Eagles Defense', position_id: 5, salary: 2, pro_team: 'Eagles')
Player.create(name: 'Bears Defense', position_id: 5, salary: 1, pro_team: 'Bears')

User.create(name: 'Steve', email: 'steve@gmail.com', password_digest: '1121')
User.create(name: 'Nathan', email: 'nathan@gmail.com', password_digest: '121')
User.create(name: 'Bill', email: 'bill@gmail.com', password_digest: '11')
User.create(name: 'Sarah', email: 'sarah@gmail.com', password_digest: '11231')
User.create(name: 'Tommy', email: 'tommy@gmail.com', password_digest: '14121')
User.create(name: 'Rob', email: 'rob@gmail.com', password_digest: '51121')
