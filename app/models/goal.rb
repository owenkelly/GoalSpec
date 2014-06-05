class Goal < ActiveRecord::Base
	belongs_to :user

	has_many :goal_updates

	has_many :goal_relationships
									
	has_many :subgoals, :class_name => "Goal",
						:foreign_key => "subgoal_id",
						through: :goal_relationships

	has_many :supergoals, :class_name => "Goal",
					:foreign_key => "goal_id",
					through: :goal_relationships

	validates :goal, presence: true

	
	
	

end
