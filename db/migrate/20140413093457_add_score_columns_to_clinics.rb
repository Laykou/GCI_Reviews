class AddScoreColumnsToClinics < ActiveRecord::Migration
  def change
    add_column :clinics, :gci_procedure_score_average, :float
    add_column :clinics, :gci_facilities_score_average, :float
    add_column :clinics, :gci_communication_score_average, :float
    add_column :clinics, :gci_overall_satisfaction_score_average, :float
    add_column :clinics, :gci_recommend_percent, :float
    add_column :clinics, :gci_count_reviews, :integer
  end
end
