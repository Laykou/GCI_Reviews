class RenameTypeToShowTypeForGciReviewsApiTypes < ActiveRecord::Migration
  def change
    rename_column :gci_reviews_api_types, :type, :show_type
  end
end
