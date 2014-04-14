require 'spec_helper'

describe "account/gci_reviews_api_color_schemes/new" do
  before(:each) do
    assign(:account_gci_reviews_api_color_scheme, stub_model(Account::GciReviewsApiColorScheme).as_new_record)
  end

  it "renders new account_gci_reviews_api_color_scheme form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", account_gci_reviews_api_color_schemes_path, "post" do
    end
  end
end
