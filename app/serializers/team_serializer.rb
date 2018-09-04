class TeamSerializer < ApplicationSerializer
  attributes :id, :name, :user, :league, :points_total
  belongs_to :user
  belongs_to :league
  #has_many :team_players
  has_many :players, through: :team_player_serializer
end
