require 'rails_helper'

RSpec.describe "merchant_applications/new", type: :view do
  before(:each) do
    assign(:merchant_application, MerchantApplication.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :company => "MyString",
      :phone_number => "MyString",
      :website => "MyString"
    ))
  end

  it "renders new merchant_application form" do
    render

    assert_select "form[action=?][method=?]", merchant_applications_path, "post" do

      assert_select "input#merchant_application_first_name[name=?]", "merchant_application[first_name]"

      assert_select "input#merchant_application_last_name[name=?]", "merchant_application[last_name]"

      assert_select "input#merchant_application_company[name=?]", "merchant_application[company]"

      assert_select "input#merchant_application_phone_number[name=?]", "merchant_application[phone_number]"

      assert_select "input#merchant_application_website[name=?]", "merchant_application[website]"
    end
  end
end
