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
    self.update_points
    self.update_salary(player)
  end


  def valid_addition?(player)
    self.update_salary
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

  def update_salary
    salary = 12
    self.players.each do |player|
      salary -= player.salary
    end
    return salary
  end

  def get(position)
    self.players.where(position_id: position.id).first
  end

end
