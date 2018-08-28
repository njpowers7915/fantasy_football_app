# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positions = Position.create([{name: 'QB'}, {name: 'RB'},
  {name: 'WR'}, {name: 'TE'}, {name: 'Defense'}])

Player.create(name: 'Aaron Rogers', position_id: 1, salary: 3, pro_team: 'Packers', touchdowns: 10, pass_yards: 1000, points: 65)
Player.create(name: 'Kurt Cousins', position_id: 1, salary: 2, pro_team: 'Vikings', touchdowns: 5, pass_yards: 999, points: 44)
Player.create(name: 'Ben Roethlisberger', position_id: 1, salary: 2, pro_team: 'Steelers', touchdowns: 5, pass_yards: 799, points: 54)
Player.create(name: 'Eli Manning', position_id: 1, salary: 1, pro_team: 'Giants', touchdowns: 2, pass_yards: 800, points: 28)

Player.create(name: 'Todd Gurley', position_id: 2, salary: 3, pro_team: 'Rams', touchdowns: 5, rush_yards: 500, receptions: 25, rec_yards: 100, points: 70)
Player.create(name: 'David Johnson', position_id: 2, salary: 2, pro_team: 'Cardinals', touchdowns: 2, rush_yards: 300, receptions: 20, rec_yards: 350, points: 68)
Player.create(name: 'Saquon Barkley', position_id: 2, salary: 2, pro_team: 'Giants', touchdowns: 10, rush_yards: 900, receptions: 22, rec_yards: 100, points: 100)
Player.create(name: 'Gio Bernard', position_id: 2, salary: 1, pro_team: 'Bengals', touchdowns: 7, rush_yards: 200, receptions: 0, rec_yards: 0, points: 50)

Player.create(name: 'Odell Beckham Jr', position_id: 3, salary: 3, pro_team: 'Giants', touchdowns: 2, receptions: 40, rec_yards: 700, points: 50)
Player.create(name: 'Jarvis Landry', position_id: 3, salary: 2, pro_team: 'Browns', touchdowns: 7, receptions: 30, rec_yards: 300, points: 52)
Player.create(name: 'Larry Fitzgerald', position_id: 3, salary: 2, pro_team: 'Cardinals', touchdowns: 2, receptions: 27, rec_yards: 350, points: 35)
Player.create(name: 'Chris Hogan', position_id: 3, salary: 1, pro_team: 'Patriots', touchdowns: 1, receptions: 21, rec_yards: 500, points: 25)

Player.create(name: 'Rob Gronkowski', position_id: 4, salary: 3, pro_team: 'Patriots', touchdowns: 7, receptions: 40, rec_yards: 350, points: 44)
Player.create(name: 'Travis Kelcy', position_id: 4, salary: 2, pro_team: 'Chiefs', touchdowns: 3, receptions: 30, rec_yards: 420, points: 27)
Player.create(name: 'Greg Olsen', position_id: 4, salary: 2, pro_team: 'Panthers', touchdowns: 2, receptions: 20, rec_yards: 180, points: 23)
Player.create(name: 'Jimmy Graham', position_id: 4, salary: 1, pro_team: 'Packers', touchdowns: 1, receptions: 10, rec_yards: 79, points: 17)

Player.create(name: 'Panthers Defense', position_id: 5, salary: 3, pro_team: 'Panthers', touchdowns: 2, points: 12)
Player.create(name: 'Seahawks Defense', position_id: 5, salary: 2, pro_team: 'Seahawks', touchdowns: 3, points: 18)
Player.create(name: 'Eagles Defense', position_id: 5, salary: 2, pro_team: 'Eagles', touchdowns: 1, points: 6)
Player.create(name: 'Bears Defense', position_id: 5, salary: 1, pro_team: 'Bears', touchdowns: 0, points: 0)

User.create(name: 'Steve', email: 'steve@gmail.com', admin: true, password_digest: '1121')
User.create(name: 'Nathan', email: 'nathan@gmail.com', password_digest: '121')
User.create(name: 'Bill', email: 'bill@gmail.com', password_digest: '11')
User.create(name: 'Sarah', email: 'sarah@gmail.com', password_digest: '11231')
User.create(name: 'Tommy', email: 'tommy@gmail.com', password_digest: '14121')
User.create(name: 'Rob', email: 'rob@gmail.com', password_digest: '51121')

League.create(name: 'Steve League', admin_id: 1)
League.create(name: 'Nathan League', admin_id: 2)

Team.create(name: 'Giants', user_id: 1, league_id: 1)
Team.create(name: 'Redskins', user_id: 3, league_id: 1)
Team.create(name: 'Eagles', user_id: 4, league_id: 1)
Team.create(name: 'Patriots', user_id: 2, league_id: 2)
Team.create(name: 'Bills', user_id: 3, league_id: 2)

Comment.create(content: 'Steve 1', league_id: 1, team_id: 1)
Comment.create(content: 'Steve 2', league_id: 1, team_id: 1)
Comment.create(content: 'Bill 1', league_id: 1, team_id: 2)
Comment.create(content: 'Bill 2', league_id: 2, team_id: 5)

teams = Team.all
teams[0].players = Player.where(id: [1, 8, 11, 14, 20])
teams[1].players = Player.where(id: [2, 6, 9, 16, 19])
teams[2].players = Player.where(id: [1, 8, 11, 14, 17])
teams[3].players = Player.where(id: [2, 5, 11, 14, 17])
teams[4].players = Player.where(id: [1, 6, 12, 16, 20])
