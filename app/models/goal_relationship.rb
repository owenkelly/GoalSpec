class GoalRelationship < ActiveRecord::Base

	belongs_to :goal

	belongs_to :supergoal, :class_name => "Goal",
							:foreign_key => "goal_id"

	belongs_to :subgoal, :class_name => "Goal",
							:foreign_key => "subgoal_id" 
	
end
