class RenameGciReviewsApiToGciReviewsApiIdForGciReviewsApiReviews < ActiveRecord::Migration
  def change
      rename_column :gci_reviews_api_reviews, :gci_reviews_api, :gci_reviews_api_id
  end
end
