require "spec_helper"

describe Account::GciReviewsApiColorSchemesController do
  describe "routing" do

    it "routes to #index" do
      get("/account/gci_reviews_api_color_schemes").should route_to("account/gci_reviews_api_color_schemes#index")
    end

    it "routes to #new" do
      get("/account/gci_reviews_api_color_schemes/new").should route_to("account/gci_reviews_api_color_schemes#new")
    end

    it "routes to #show" do
      get("/account/gci_reviews_api_color_schemes/1").should route_to("account/gci_reviews_api_color_schemes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account/gci_reviews_api_color_schemes/1/edit").should route_to("account/gci_reviews_api_color_schemes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account/gci_reviews_api_color_schemes").should route_to("account/gci_reviews_api_color_schemes#create")
    end

    it "routes to #update" do
      put("/account/gci_reviews_api_color_schemes/1").should route_to("account/gci_reviews_api_color_schemes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account/gci_reviews_api_color_schemes/1").should route_to("account/gci_reviews_api_color_schemes#destroy", :id => "1")
    end

  end
end
