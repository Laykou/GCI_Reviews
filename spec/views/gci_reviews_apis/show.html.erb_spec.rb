require 'spec_helper'

describe "gci_reviews_apis/show" do
  before(:each) do
    @gci_reviews_api = assign(:gci_reviews_api, stub_model(GciReviewsApi))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
