class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :position_id
      t.integer :salary
      t.integer :points, default: 0
      t.string :pro_team
      t.integer :tries, default: 0
      t.integer :goals, default: 0
      t.integer :line_breaks, default: 0
      t.integer :tackles, default: 0
      t.integer :run_metres, default: 0
      t.timestamps
    end
  end
end
