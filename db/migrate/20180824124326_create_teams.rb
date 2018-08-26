class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :available_salary, default: 12
      t.integer :user_id
      t.integer :points_total, default: 0
      t.integer :league_id, default: :null

      t.timestamps
    end
  end
end
