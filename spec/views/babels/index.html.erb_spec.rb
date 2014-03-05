require 'spec_helper'

describe "babels/index" do
  before(:each) do
    assign(:babels, [
      stub_model(Babel,
        :message => "Message"
      ),
      stub_model(Babel,
        :message => "Message"
      )
    ])
  end

  it "renders a list of babels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
