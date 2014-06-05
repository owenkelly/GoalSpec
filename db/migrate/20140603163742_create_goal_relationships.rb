class CreateGoalRelationships < ActiveRecord::Migration
  def change
  		add_column(:goal_relationships, :created_at, :datetime)
      add_column(:goal_relationships, :updated_at, :datetime)
  end
end
