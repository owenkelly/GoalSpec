class ChangeGoalModel < ActiveRecord::Migration
  def change
  	remove_column :goals, :metagoal_id
  	rename_column :goals, :reason, :description
  	create_table :goal_relationships do |t|
  		t.integer :supergoal_id
  		t.integer :subgoal_id
  	end
  	add_column :users, :name, :string
  end
end
