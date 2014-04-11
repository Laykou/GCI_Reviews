class CreateGciReviewsApiColorSchemes < ActiveRecord::Migration
  def change
    create_table :gci_reviews_api_color_schemes do |t|
      t.string :label
      t.string :width
      t.string :default_font
      t.string :review_font
      t.string :heading_font
      t.string :details_heading_font
      t.string :details_font
      t.string :link_font
      t.string :background_color
      t.string :name_font
      t.string :country_font
      t.string :final_rating_font
      t.string :global_index_font
      t.string :certificate_font
      t.string :gci_box_color
      t.string :gci_box_font
      t.integer :user_id
      t.integer :gci_reviews_api_id

      t.timestamps
    end
  end
end
