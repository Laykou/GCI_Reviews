require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit sign_in_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }
  end

  describe "signin" do
    before { visit sign_in_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_title('Sign in') }
      it { should have_selector('div.alert.alert-error') }

      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "E-mail", with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      it { should have_title('My account') }
      it { should have_link('Profile', href: account_path) }
      it { should have_link('Sign out', href: sign_out_path) }
      it { should_not have_link('Sign in', href: sign_in_path) }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
    end
  end

  describe "not signed in" do
    describe "visitin account page" do
      before { visit account_path }

      it { should_not have_content('Welcome') }
      it { should have_button('Sign in') }
    end
  end
end