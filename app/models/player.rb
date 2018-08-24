class Player < ApplicationRecord
  belongs_to :position
  has_many :teams_players
  has_many :teams, through: :teams_players
end
