class Goal < ActiveRecord::Base
	belongs_to :user
	has_many :goal_updates
	has_many :child_goals, :through => :sub_goals
	scope :daily, -> { where(recurrance: 'daily')}
end
