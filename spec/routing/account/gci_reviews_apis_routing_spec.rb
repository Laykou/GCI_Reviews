require "spec_helper"

describe Account::GciReviewsApisController do
  describe "routing" do

    it "routes to #index" do
      get("/account/gci_reviews_apis").should route_to("account/gci_reviews_apis#index")
    end

    it "routes to #new" do
      get("/account/gci_reviews_apis/new").should route_to("account/gci_reviews_apis#new")
    end

    it "routes to #show" do
      get("/account/gci_reviews_apis/1").should route_to("account/gci_reviews_apis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/account/gci_reviews_apis/1/edit").should route_to("account/gci_reviews_apis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/account/gci_reviews_apis").should route_to("account/gci_reviews_apis#create")
    end

    it "routes to #update" do
      put("/account/gci_reviews_apis/1").should route_to("account/gci_reviews_apis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/account/gci_reviews_apis/1").should route_to("account/gci_reviews_apis#destroy", :id => "1")
    end

  end
end
