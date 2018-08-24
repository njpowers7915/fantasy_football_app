class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :position_id
      t.integer :salary
      t.integer :points
      t.string :pro_team

      t.timestamps
    end
  end
end
