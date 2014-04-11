class GciReviewsApiReview < ActiveRecord::Base
  belongs_to :gci_reviews_api
  belongs_to :clinic
  belongs_to :gci_reviews_api_statistic
end
