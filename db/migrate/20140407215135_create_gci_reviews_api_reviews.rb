class CreateGciReviewsApiReviews < ActiveRecord::Migration
  def change
    create_table :gci_reviews_api_reviews do |t|
      t.integer :clinic_id
      t.integer :gci_reviews_api
      t.float :procedure_score
      t.float :facilities_score
      t.float :communication_score
      t.float :overall_satisfaction_score
      t.text :positive_text
      t.text :negative_text
      t.text :normal_text
      t.string :name
      t.string :city
      t.string :country_id
      t.integer :gci_reviews_api_statistic_id
      t.boolean :approved
      t.integer :approved_by

      t.timestamps
    end
  end
end
