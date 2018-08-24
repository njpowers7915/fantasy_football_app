class TeamsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :teams_players do |t|
      t.integer :team_id
      t.integer :player_id
    end
  end
end
