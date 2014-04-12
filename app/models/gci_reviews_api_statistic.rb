class GciReviewsApiStatistic < ActiveRecord::Base
  belongs_to :gci_reviews_api
  has_many :gci_reviews_api_reviews
end
