class Player < ApplicationRecord
  belongs_to :position
  has_many :teams_players
  has_many :teams, through: :teams_players

  #def self.get_by(position)
  #  Player.all.where(position: Position.find_by(name: position))
  #end
  
end
