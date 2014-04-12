class ChangeCityToStringForClinics < ActiveRecord::Migration
  def change
    change_column :clinics, :city, :string
  end
end
