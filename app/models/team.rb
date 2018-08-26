class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league, required: false
  has_many :comments
  has_many :teams_players
  has_many :players, through: :teams_players

  def get_hooker
    self.players.where(position_id: 1).first
  end

  def get_front_row
    self.players.where(position_id: 2).first
  end

  def get_second_row
    self.players.where(position_id: 3).first
  end

  def get_half
    self.players.where(position_id: 4).first
  end

  def get_centre
    self.players.where(position_id: 5).first
  end

  def get_outside_back
    self.players.where(position_id: 6).first
  end
end
