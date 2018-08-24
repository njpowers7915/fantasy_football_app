class TeamsPlayers < ActiveRecord::Migration[5.2]
  def change
    t.integer :team_id
    t.integer :player_id
  end
end
