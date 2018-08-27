class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :position_id
      t.integer :salary
      t.integer :points, default: 0
      t.string :pro_team
      t.integer :touchdowns, default: 0
      t.integer :pass_yards, default: 0
      t.integer :rush_yards, default: 0
      t.integer :receptions, default: 0
      t.integer :rec_yards, default: 0
      t.timestamps
    end
  end
end
