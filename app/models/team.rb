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
  end


  def valid_addition?(player)
    self.update_salary(player)
    if self.available_salary < 0
      return false
    else
      self.save
    end
  end

  def update_points
    point_total = 0
    self.players.each do |player|
      point_total += player.points
    end
    return point_total
  end

  def update_salary(player)
    self.available_salary = self.available_salary - player.salary
  end

  def get_qb
    self.players.where(position_id: 1).first
  end

  def get_rb
    self.players.where(position_id: 2).first
  end

  def get_wr
    self.players.where(position_id: 3).first
  end

  def get_te
    self.players.where(position_id: 4).first
  end

  def get_d
    self.players.where(position_id: 5).first
  end

end
