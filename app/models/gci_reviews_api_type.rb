class GciReviewsApiType < ActiveRecord::Base
  has_many :gci_reviews_apis

  validates :label, presence: true
end
