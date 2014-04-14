require 'spec_helper'

describe "account/gci_reviews_api_color_schemes/show" do
  before(:each) do
    @account_gci_reviews_api_color_scheme = assign(:account_gci_reviews_api_color_scheme, stub_model(Account::GciReviewsApiColorScheme))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
