require 'spec_helper'

describe "gci_reviews_apis/index" do
  before(:each) do
    assign(:gci_reviews_apis, [
      stub_model(GciReviewsApi),
      stub_model(GciReviewsApi)
    ])
  end

  it "renders a list of gci_reviews_apis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
