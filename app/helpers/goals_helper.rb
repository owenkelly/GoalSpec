module GoalsHelper



def toggle_subgoals goal
    if @expand_subgoal.to_i == goal.id
      link_to 'Collapse Subgoals', goals_path(expand_subgoal: nil)  
    else
      link_to 'View Subgoals', goals_path(expand_subgoal: goal.id)
      
    end
 end

 def find_subgoals goal
 	GoalRelationship.where(subgoal_id: goal.id)
 end


end
