require 'rails_helper'

RSpec.describe "MerchantApplications", type: :request do
  describe "GET /merchant_applications" do
    it "works! (now write some real specs)" do
      get merchant_applications_path
      expect(response).to have_http_status(200)
    end
  end
end
