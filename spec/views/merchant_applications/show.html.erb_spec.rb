require 'rails_helper'

RSpec.describe "merchant_applications/show", type: :view do
  before(:each) do
    @merchant_application = assign(:merchant_application, MerchantApplication.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :company => "Company",
      :phone_number => "Phone Number",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Website/)
  end
end
