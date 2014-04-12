require 'spec_helper'

describe "account/gci_reviews_apis/index" do
  before(:each) do
    assign(:account_gci_reviews_apis, [
      stub_model(Account::GciReviewsApi),
      stub_model(Account::GciReviewsApi)
    ])
  end

  it "renders a list of account/gci_reviews_apis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
