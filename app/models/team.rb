class Team < ApplicationRecord
  belongs_to :user
  belongs_to :league, required: false
  has_many :comments
  has_many :teams_players
  has_many :players, through: :teams_players

  def join_league(league)
    if self.league.nil?
      self.league = league
      self.save
    end
  end

  def delete_player(player)
    deleted_player = self.players.detect {|i| i == player}
    self.players -= [deleted_player]
    self.save
  end


  def valid_addition?(player)
    self.available_salary -= player.salary
    if self.available_salary < 0
      return false
    end
  end

  def update_points
    self.points_total = 0
    self.players.each do |player|
      self.points_total += player.points
    end
    self.save
  end

  def update_salary
    self.available_salary = 12
    self.players.each do |player|
      self.available_salary -= player.salary
    end
    self.save
  end

  def get(position)
    self.players.where(position_id: position.id).first
  end

end
