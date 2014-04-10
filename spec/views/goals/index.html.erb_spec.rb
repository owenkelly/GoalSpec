require 'spec_helper'

describe "goals/index" do
  before(:each) do
    assign(:goals, [
      stub_model(Goal,
        :goal => "Goal",
        :reason => "MyText",
        :recurrance => "Recurrance"
      ),
      stub_model(Goal,
        :goal => "Goal",
        :reason => "MyText",
        :recurrance => "Recurrance"
      )
    ])
  end

  it "renders a list of goals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Goal".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Recurrance".to_s, :count => 2
  end
end
