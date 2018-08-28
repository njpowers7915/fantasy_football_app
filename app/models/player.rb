class Player < ApplicationRecord
  serialize :name, :position_id, :pro_team, :points, :touchdowns, :pass_yards, :rush_yards, :receptions, :rec_yards
  
  belongs_to :position
  has_many :teams_players
  has_many :teams, through: :teams_players
end
