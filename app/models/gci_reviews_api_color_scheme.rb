class GciReviewsApiColorScheme < ActiveRecord::Base
  belongs_to :gci_reviews_api
  belongs_to :user

  validates :label, presence: true
end
