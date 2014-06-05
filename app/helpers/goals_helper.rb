module GoalsHelper



	def toggle_subgoals goal
	    if @expand_subgoal == goal.id.to_s
	      link_to 'Collapse Subgoals', goals_path(expand_subgoal: nil)  
	    else
	      link_to 'View Subgoals', goals_path(expand_subgoal: goal.id)
	      
	    end
	end

	 def find_subgoals goal
	 	GoalRelationship.where(subgoal_id: goal.id)
	 end

	def complete_toggle
		if @complete
			link_to "Show Active Goals", goals_path(complete: nil)
		else
			link_to "Show Completed Goals", goals_path(complete: true)
		end
	end

	def active_or_complete goal
		if @complete
			goal.where(complete: true)
		else
			goal.where(complete: nil)
		end
	end



end
