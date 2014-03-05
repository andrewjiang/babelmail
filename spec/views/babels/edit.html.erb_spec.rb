require 'spec_helper'

describe "babels/edit" do
  before(:each) do
    @babel = assign(:babel, stub_model(Babel,
      :message => "MyString"
    ))
  end

  it "renders the edit babel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", babel_path(@babel), "post" do
      assert_select "input#babel_message[name=?]", "babel[message]"
    end
  end
end
