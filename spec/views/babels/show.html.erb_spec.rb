require 'spec_helper'

describe "babels/show" do
  before(:each) do
    @babel = assign(:babel, stub_model(Babel,
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Message/)
  end
end
