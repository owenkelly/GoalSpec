require_relative '../spec_helper'


describe "Goals Integration" do

	before :each do
	    @user = FactoryGirl.create(:user)
		login_as(@user, :scope => :user)
	end


	context "new" do
		
		before :each do
			visit new_goal_path(user_id: @user.id)
			fill_in "Goal", with: "Make a cupcake"
			fill_in "Description", with: "Because I am huuuungry"
			
		end
		
		it "should create a new goal" do
			goal_count = Goal.count
			click_link_or_button "Create Goal"
			Goal.count.should eq goal_count+1
		end


	end

	context "edit" do


		it "should edit a created goal" do
			goal = Goal.create(goal: "make a pie", user_id: @user.id)
			visit edit_goal_path(goal)
			fill_in "Goal", with: "Derp and Lerp"
			click_link_or_button "Update Goal"
			Goal.find(goal.id).reload.goal.should eq "Derp and Lerp"
		end


			it "should be able to assign a supergoal to the current goal" do
			subgoal = Goal.create(goal: "make a cake", user_id: @user.id)
			goal = Goal.create(goal: "make a pie", user_id: @user.id)
			visit edit_goal_path(goal)
			select('make a cake', from: 'goal_subgoal_ids')
			click_link_or_button "Update Goal"
			GoalRelationship.last.reload.subgoal_id.should eq subgoal.id
		end

	end

	context 'goal updates' do

		before :each do
			visit new_goal_path(user_id: @user.id)
			fill_in "Goal", with: "Make a cupcake"
			fill_in "Description", with: "Because I am huuuungry"
			click_link_or_button "Create Goal"
		end

		it "should be able to assign goal updates" do
			pending
			#visit new_goal_goal_update_path
			#click_link_or_button "View Updates"
		end
	end




	

end