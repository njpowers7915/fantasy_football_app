class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :comments
  has_many :teams_players
  has_many :players, through: :teams_players
end 
