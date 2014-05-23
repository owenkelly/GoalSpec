require_relative '../spec_helper'


describe "Goals Integration" do
	context "new" do
		
		before :each do
			visit 'goals/new'
			fill_in "Goal", with: "Make a cupcake"
			fill_in "Reason", with: "Because I am huuuungry"
			
		end
		
		it "should create a new goal" do
			goal_count = Goal.count
			click_link_or_button "Create Goal"
			Goal.count.should eq goal_count+1
		end



	end

end