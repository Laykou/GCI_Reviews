class User < ActiveRecord::Base
  has_secure_password

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  has_many :clinics

  validates :firstname, presence: true, length: {maximum: 30}
  validates :lastname, presence: true, length: {maximum: 30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, length: {minimum: 6}

  # Returns full name as firstname + lastname
  def full_name
    firstname + ' ' + lastname
  end

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
  def create_remember_token
    self.remember_token = User.hash(User.new_remember_token)
  end
end
