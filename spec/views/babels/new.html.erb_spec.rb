require 'spec_helper'

describe "babels/new" do
  before(:each) do
    assign(:babel, stub_model(Babel,
      :message => "MyString"
    ).as_new_record)
  end

  it "renders new babel form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", babels_path, "post" do
      assert_select "input#babel_message[name=?]", "babel[message]"
    end
  end
end
