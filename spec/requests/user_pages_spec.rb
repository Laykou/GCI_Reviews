require 'spec_helper'

describe 'User Pages' do
  subject { page }

  describe 'profile page' do
    let(:user) { FactoryGirl.create(:user) }
    before { visit admin_user_path(user) }

    it { should have_content(user.full_name) }
    it { should have_title(user.full_name) }
  end

  describe 'Sign up page' do
    before { visit sign_up_path }

    it { should have_content('Sign up') }
    it { should have_title('Sign up') }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end

      describe "after submission" do
        before { click_button submit }

        it { should have_title('Sign up') }
      end
    end

    describe "with valid information" do
      before do
        fill_in "First name", with: "Example"
        fill_in "Last name", with: "User"
        fill_in "E-mail", with: "user@example.com"
        fill_in "Password", with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        # Sign in automatically after sign up
        it { should have_title('My account') }
        it { should have_link('Sign out') }
        it { should have_selector('div.alert.alert-success', text: 'Welcome') }
      end
    end
  end
end
