class CreateGciReviewsApiTypes < ActiveRecord::Migration
  def change
    create_table :gci_reviews_api_types do |t|
      t.string :label
      t.string :type

      t.timestamps
    end
  end
end
