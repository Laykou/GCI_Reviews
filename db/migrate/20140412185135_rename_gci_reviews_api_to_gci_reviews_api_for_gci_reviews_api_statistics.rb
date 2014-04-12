class RenameGciReviewsApiToGciReviewsApiForGciReviewsApiStatistics < ActiveRecord::Migration
  def change
      rename_column :gci_reviews_api_statistics, :gci_reviews_api, :gci_reviews_api_id
  end
end
