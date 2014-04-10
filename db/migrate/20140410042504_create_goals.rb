class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :goal
      t.text :reason
      t.date :start
      t.date :end
      t.string :recurrance

      t.timestamps
    end
  end
end
