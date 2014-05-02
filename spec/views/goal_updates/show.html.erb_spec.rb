require 'spec_helper'

describe "goal_updates/show" do
  before(:each) do
    @goal_update = assign(:goal_update, stub_model(GoalUpdate,
      :goal_id => 1,
      :entry => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
