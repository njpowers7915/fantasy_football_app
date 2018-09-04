class TeamSerializer < ApplicationSerializer
  attributes :id, :name, :user
  belongs_to :user
  has_many :players, through: :team_players
end