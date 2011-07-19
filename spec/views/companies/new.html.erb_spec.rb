require 'spec_helper'

describe "companies/new.html.erb" do
  before(:each) do
    assign(:company, stub_model(Company,
      :group_name => "MyString",
      :company_name => "MyString",
      :responsible_person => "MyString",
      :company_type => "MyString",
      :company_logo => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :contact_one => 1,
      :contact_two => 1,
      :fax => 1,
      :email => "MyString",
      :alternate => "",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path, :method => "post" do
      assert_select "input#company_group_name", :name => "company[group_name]"
      assert_select "input#company_company_name", :name => "company[company_name]"
      assert_select "input#company_responsible_person", :name => "company[responsible_person]"
      assert_select "input#company_company_type", :name => "company[company_type]"
      assert_select "input#company_company_logo", :name => "company[company_logo]"
      assert_select "input#company_address", :name => "company[address]"
      assert_select "input#company_city", :name => "company[city]"
      assert_select "input#company_state", :name => "company[state]"
      assert_select "input#company_country", :name => "company[country]"
      assert_select "input#company_contact_one", :name => "company[contact_one]"
      assert_select "input#company_contact_two", :name => "company[contact_two]"
      assert_select "input#company_fax", :name => "company[fax]"
      assert_select "input#company_email", :name => "company[email]"
      assert_select "input#company_alternate", :name => "company[alternate]"
      assert_select "input#company_website", :name => "company[website]"
    end
  end
end
