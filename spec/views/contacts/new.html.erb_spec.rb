require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :language => "MyString"
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacts_path, "post" do
      assert_select "input#contact_firstname[name=?]", "contact[firstname]"
      assert_select "input#contact_lastname[name=?]", "contact[lastname]"
      assert_select "input#contact_email[name=?]", "contact[email]"
      assert_select "input#contact_language[name=?]", "contact[language]"
    end
  end
end
