require 'spec_helper'

describe "gci_reviews_apis/edit" do
  before(:each) do
    @gci_reviews_api = assign(:gci_reviews_api, stub_model(GciReviewsApi))
  end

  it "renders the edit gci_reviews_api form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gci_reviews_api_path(@gci_reviews_api), "post" do
    end
  end
end
