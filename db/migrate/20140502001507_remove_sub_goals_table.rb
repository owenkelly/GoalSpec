class RemoveSubGoalsTable < ActiveRecord::Migration
  def change
  	drop_table :sub_goals_tables
  end
end
