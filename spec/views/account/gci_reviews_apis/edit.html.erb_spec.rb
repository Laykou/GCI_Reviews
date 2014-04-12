require 'spec_helper'

describe "account/gci_reviews_apis/edit" do
  before(:each) do
    @account_gci_reviews_api = assign(:account_gci_reviews_api, stub_model(Account::GciReviewsApi))
  end

  it "renders the edit account_gci_reviews_api form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", account_gci_reviews_api_path(@account_gci_reviews_api), "post" do
    end
  end
end
