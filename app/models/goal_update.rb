class GoalUpdate < ActiveRecord::Base
	extend SimpleCalendar
  		has_calendar :attribute => :created_at
	belongs_to :goal
end
