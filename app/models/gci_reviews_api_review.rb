class GciReviewsApiReview < ActiveRecord::Base
  include ActionView::Helpers::SanitizeHelper

  belongs_to :gci_reviews_api
  belongs_to :clinic
  belongs_to :country
  belongs_to :gci_reviews_api_statistic

  #belongs_to :user, foreign_key: 'approved_by'

  def as_json(options = {})
    h                                   = super(options)

    # Return width in px for stars element - all 5 stars are 105px wide
    h[:procedure_score_width]           = procedure_score / 5 * 105
    h[:facilities_core_width]           = facilities_score / 5 * 105
    h[:communication_score_width]       = communication_score / 5 * 105
    h[:overall_satisfaction_score_width]= overall_satisfaction_score / 5 * 105

    # Sanitize reviews texts and data
    h[:normal_text]                     = sanitize normal_text
    h[:positive_text]                   = sanitize positive_text
    h[:negative_text]                   = sanitize negative_text

    h
  end
end
