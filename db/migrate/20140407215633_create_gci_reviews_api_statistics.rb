class CreateGciReviewsApiStatistics < ActiveRecord::Migration
  def change
    create_table :gci_reviews_api_statistics do |t|
      t.integer :gci_reviews_api
      t.string :ip
      t.string :previous_url
      t.string :user_agent
      t.string :accept_language
      t.string :showed_reviews
      t.timestamp :leaving_at

      t.timestamps
    end
  end
end
