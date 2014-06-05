class ChangeNameOfCompletion < ActiveRecord::Migration
  def change
  	rename_column :goals, :complete?, :complete
  end
end
