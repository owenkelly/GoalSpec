require 'spec_helper'

describe "goal_updates/index" do
  before(:each) do
    assign(:goal_updates, [
      stub_model(GoalUpdate,
        :goal_id => 1,
        :entry => "MyText"
      ),
      stub_model(GoalUpdate,
        :goal_id => 1,
        :entry => "MyText"
      )
    ])
  end

  it "renders a list of goal_updates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
