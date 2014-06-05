class ChangeGoalRelationships < ActiveRecord::Migration
  def change
  	rename_column :goal_relationships, :supergoal_id, :goal_id
  end
end
