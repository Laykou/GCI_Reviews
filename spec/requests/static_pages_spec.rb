require 'spec_helper'

describe 'StaticPages' do
  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_selector('h1', text: heading) }
    it { should have_title(page_title) }
  end

  describe 'Home page' do
    before { visit root_path }

    it should have_title('Global Clinic Index')
  end

  describe 'About page' do
    before { visit about_path }

    let(:heading) { 'About' }
    let(:page_title) { 'About | Global Clinic Index' }

    it_should_behave_like 'all static pages'
  end

  describe 'Contact page' do
    before { visit contact_path }

    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact | Global Clinic Index' }

    it_should_behave_like 'all static pages'
  end

  describe 'Sign in page' do
    before { visit sign_in_path }

    let(:heading) { 'Sign in' }
    let(:page_title) { 'Sign in | Global Clinic Index' }

    it_should_behave_like 'all static pages'
  end

  describe 'Sign up page' do
    before { visit sign_up_path }

    let(:heading) { 'Sign up' }
    let(:page_title) { 'Sign up | Global Clinic Index' }

    it_should_behave_like 'all static pages'
  end
end
