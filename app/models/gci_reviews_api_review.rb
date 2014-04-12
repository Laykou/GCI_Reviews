class GciReviewsApiReview < ActiveRecord::Base
  belongs_to :gci_reviews_api
  belongs_to :clinic
  belongs_to :country
  belongs_to :gci_reviews_api_statistic

  belongs_to :user, foreign_key: 'approved_by'
end
