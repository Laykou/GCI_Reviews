require 'spec_helper'

describe "account/gci_reviews_apis/show" do
  before(:each) do
    @account_gci_reviews_api = assign(:account_gci_reviews_api, stub_model(Account::GciReviewsApi))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
