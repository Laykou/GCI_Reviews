class CreateGciReviewsApis < ActiveRecord::Migration
  def change
    create_table :gci_reviews_apis do |t|
      t.integer :clinic_id
      t.string :api_code
      t.string :web_page
      t.integer :gci_reviews_api_type_id
      t.integer :gci_reviews_api_color_scheme_id
      t.integer :reviews_per_page
      t.boolean :must_approve

      t.timestamps
    end
  end
end
