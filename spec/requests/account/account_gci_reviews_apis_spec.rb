require 'spec_helper'

describe "Account::GciReviewsApis" do
  describe "GET /account_gci_reviews_apis" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get account_gci_reviews_apis_path
      response.status.should be(200)
    end
  end
end
