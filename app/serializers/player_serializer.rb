class PlayerSerializer < ApplicationSerializer
  attributes :name, :position, :pro_team, :points, :touchdowns, :pass_yards, :rush_yards, :receptions, :rec_yards
  belongs_to :position
end
