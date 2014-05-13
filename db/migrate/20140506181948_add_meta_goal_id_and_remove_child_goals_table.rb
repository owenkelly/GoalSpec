class AddMetaGoalIdAndRemoveChildGoalsTable < ActiveRecord::Migration
  def change
  	drop_table :sub_goals
  	add_column :goals, :metagoal_id, :integer
  	add_column :goals, :user_id, :integer
  end
end
