class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :available_salary
      t.integer :user_id
      t.integer :points_total
      t.integer :league_id

      t.timestamps
    end
  end
end
