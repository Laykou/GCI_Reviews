require 'spec_helper'

describe "StaticPages" do
  describe "About" do
    it "should have the heading 'About'" do
      visit '/about'
      expect(page).to have_content('About')
    end

    it "should have the base title" do
      visit '/'
      expect(page).to have_title('Global Clinic Index')
    end

    it "should have a custom page title 'About'" do
      visit '/about'
      expect(page).to have_title('About | Global Clinic Index')
    end
  end
end
