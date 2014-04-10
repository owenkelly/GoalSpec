require 'spec_helper'

describe "goals/show" do
  before(:each) do
    @goal = assign(:goal, stub_model(Goal,
      :goal => "Goal",
      :reason => "MyText",
      :recurrance => "Recurrance"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Goal/)
    rendered.should match(/MyText/)
    rendered.should match(/Recurrance/)
  end
end
