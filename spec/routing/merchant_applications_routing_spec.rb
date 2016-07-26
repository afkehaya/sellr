require "rails_helper"

RSpec.describe MerchantApplicationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/merchant_applications").to route_to("merchant_applications#index")
    end

    it "routes to #new" do
      expect(:get => "/merchant_applications/new").to route_to("merchant_applications#new")
    end

    it "routes to #show" do
      expect(:get => "/merchant_applications/1").to route_to("merchant_applications#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/merchant_applications/1/edit").to route_to("merchant_applications#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/merchant_applications").to route_to("merchant_applications#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/merchant_applications/1").to route_to("merchant_applications#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/merchant_applications/1").to route_to("merchant_applications#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/merchant_applications/1").to route_to("merchant_applications#destroy", :id => "1")
    end

  end
end
