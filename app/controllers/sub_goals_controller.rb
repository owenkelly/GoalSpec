class SubGoalsController < ApplicationController
	def create
		@goal = Goal.new(goal_params)
		@sub_goal = sub_goals.build(:)

	end

	def new
    @goal = Goal.new
    @title = 'New Goal'
    render "goals/new", layout: "goals/table"
  end

end
