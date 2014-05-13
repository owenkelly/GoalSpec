module GoalsHelper


	def metagoal
		Goal.where(id: @goal.metagoal_id)
	end

	

end
