require 'spec_helper'

describe "account/gci_reviews_api_color_schemes/edit" do
  before(:each) do
    @account_gci_reviews_api_color_scheme = assign(:account_gci_reviews_api_color_scheme, stub_model(Account::GciReviewsApiColorScheme))
  end

  it "renders the edit account_gci_reviews_api_color_scheme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", account_gci_reviews_api_color_scheme_path(@account_gci_reviews_api_color_scheme), "post" do
    end
  end
end
