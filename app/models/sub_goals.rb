class SubGoals < ActiveRecord::Base
	belongs_to :user
	belongs_to :goal
	belongs_to :child_goal, :class_name => "Goal"
end
