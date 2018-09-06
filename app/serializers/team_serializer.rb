class TeamSerializer < ApplicationSerializer
  attributes :id, :name, :user, :league, :players, :points_total
  belongs_to :user
  belongs_to :league
  #has_many :team_players
  has_many :players
end
