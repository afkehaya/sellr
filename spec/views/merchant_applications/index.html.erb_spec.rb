require 'rails_helper'

RSpec.describe "merchant_applications/index", type: :view do
  before(:each) do
    assign(:merchant_applications, [
      MerchantApplication.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :company => "Company",
        :phone_number => "Phone Number",
        :website => "Website"
      ),
      MerchantApplication.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :company => "Company",
        :phone_number => "Phone Number",
        :website => "Website"
      )
    ])
  end

  it "renders a list of merchant_applications" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
