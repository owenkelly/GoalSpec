class RemoveRecurranceFromGoals < ActiveRecord::Migration
  def change
  	remove_column :goals, :recurrance
  end
end
