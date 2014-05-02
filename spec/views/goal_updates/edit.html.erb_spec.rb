require 'spec_helper'

describe "goal_updates/edit" do
  before(:each) do
    @goal_update = assign(:goal_update, stub_model(GoalUpdate,
      :goal_id => 1,
      :entry => "MyText"
    ))
  end

  it "renders the edit goal_update form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", goal_update_path(@goal_update), "post" do
      assert_select "input#goal_update_goal_id[name=?]", "goal_update[goal_id]"
      assert_select "textarea#goal_update_entry[name=?]", "goal_update[entry]"
    end
  end
end
