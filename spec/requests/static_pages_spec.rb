require 'spec_helper'

describe 'StaticPages' do
  subject { page }

  describe 'Home page' do
    before { visit root_path }

    it { should have_title('Global Clinic Index') }
  end

  describe 'About page' do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title('About | Global Clinic Index') }
  end

  describe 'Contact page' do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title('Contact | Global Clinic Index') }
  end

  describe 'Sign in page' do
    before { visit sign_in_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in | Global Clinic Index') }
  end

  describe 'Sign up page' do
    before { visit sign_up_path }

    it { should have_content('Sign up') }
    it { should have_title('Sign up | Global Clinic Index') }
  end
end
