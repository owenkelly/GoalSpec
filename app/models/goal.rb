class Goal < ActiveRecord::Base
	belongs_to :user

	has_many :goal_updates

	has_many :subgoals, class_name: "Goals",
						foreign_key: "metagoal_id"
	belongs_to :metagoal

	validates :goal, presence: true

	

	scope :daily, -> { where(recurrance: "Daily") }
	scope :metagoal, -> { where(metagoal_id: nil) }
end
