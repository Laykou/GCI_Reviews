require 'spec_helper'

describe User do
  before { @user = User.new(firstname: "Example", lastname: "User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:firstname) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe 'when firstname is not present' do
    before { @user.firstname = ' ' }
    it { should_not be_valid }
  end

  describe "when firstname is too long" do
    before { @user.firstname = "a" * 31 }
    it { should_not be_valid }
  end

  describe 'when lastname is not present' do
    before { @user.lastname = ' ' }
    it { should_not be_valid }
  end

  describe "when lastname is too long" do
    before { @user.lastname = "a" * 31 }
    it { should_not be_valid }
  end

  describe 'when e-mail is not present' do
    before { @user.email = ' ' }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when e-mail address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end
end