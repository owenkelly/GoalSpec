class AddCompletetionToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :complete?, :boolean
  end
end
