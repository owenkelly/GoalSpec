class ChangeColoumnNameInSubgoals < ActiveRecord::Migration
  def change
  	rename_column :sub_goals, :sub_goal_id, :child_goal_id
  end
end
