require 'spec_helper'

describe "account/gci_reviews_api_color_schemes/index" do
  before(:each) do
    assign(:account_gci_reviews_api_color_schemes, [
      stub_model(Account::GciReviewsApiColorScheme),
      stub_model(Account::GciReviewsApiColorScheme)
    ])
  end

  it "renders a list of account/gci_reviews_api_color_schemes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
