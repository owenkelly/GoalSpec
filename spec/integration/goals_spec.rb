require_relative '../spec_helper'


describe "Goals Integration" do
	context "new" do
		
		before :each do
			visit new_goal_path
			fill_in "Goal", with: "Make a cupcake"
			fill_in "Reason", with: "Because I am huuuungry"
			
		end
		
		it "should create a new goal" do
			goal_count = Goal.count
			click_link_or_button "Create Goal"
			Goal.count.should eq goal_count+1
		end

		it "should be able to assign a metagoal to the current goal" do
		metagoal = Goal.create(goal: "make a cake")
		goal = Goal.create(goal: "make a pie")
		visit edit_goal_path(goal)
		select('make a cake', from: 'goal_metagoal_id')
		click_link_or_button "Update Goal"
		goal.reload.metagoal_id.should eq metagoal.id
	end


	

end