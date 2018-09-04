class PlayerSerializer < ApplicationSerializer
  attributes :name, :position, :pro_team, :salary, :points, :touchdowns, :pass_yards, :rush_yards, :receptions, :rec_yards
  belongs_to :position
  #has_many :team_players
  has_many :teams, through: :team_player_serializer
end
