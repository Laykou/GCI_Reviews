class GciReviewsApi < ActiveRecord::Base
  belongs_to :clinic
  belongs_to :gci_reviews_api_type
  belongs_to :gci_reviews_api_color_scheme
  has_many :gci_reviews_api_reviews
end