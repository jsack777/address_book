require 'rails_helper'

describe "contacts/edit" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :postal_code => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path(@contact), :method => "post" do
      assert_select "input#contact_name", :name => "contact[name]"
      assert_select "input#contact_address", :name => "contact[address]"
      assert_select "input#contact_city", :name => "contact[city]"
      assert_select "input#contact_state", :name => "contact[state]"
      assert_select "input#contact_postal_code", :name => "contact[postal_code]"
      assert_select "input#contact_phone", :name => "contact[phone]"
    end
  end
end
