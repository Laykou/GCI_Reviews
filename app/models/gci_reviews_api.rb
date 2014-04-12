class GciReviewsApi < ActiveRecord::Base
  before_create :create_api_code

  belongs_to :clinic
  belongs_to :gci_reviews_api_type
  belongs_to :gci_reviews_api_color_scheme
  has_many :gci_reviews_api_reviews

  validates_presence_of :clinic

  private
  def create_api_code
    self.api_code = SecureRandom.urlsafe_base64 64
  end
end