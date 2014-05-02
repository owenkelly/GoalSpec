class CreateSubGoals < ActiveRecord::Migration
  def change
    create_table :sub_goals do |t|
      t.integer :goal_id
      t.integer :sub_goal_id

      t.timestamps
    end
  end
end
