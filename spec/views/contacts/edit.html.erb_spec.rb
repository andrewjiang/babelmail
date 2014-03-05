require 'spec_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :language => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do
      assert_select "input#contact_firstname[name=?]", "contact[firstname]"
      assert_select "input#contact_lastname[name=?]", "contact[lastname]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_language[name=?]", "contact[language]"
    end
  end
end
