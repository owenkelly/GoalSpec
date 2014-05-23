require 'spec_helper'


describe "Goals Integration" do
	context "new" do
		it "should create a new goal" do
			visit new_goal_path
			fill_in "Goal", with: "Make a cupcake"
			fill_in "Reason", with: "Because I am huuuungry"
			fill_in "Start", with: "2014/05/22"
			fill_in "End", with: "2014/07/24"
		end
	end
end