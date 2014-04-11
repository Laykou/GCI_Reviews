class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :description
      t.integer :clinic_type_id
      t.string :street
      t.string :street_nr
      t.integer :city
      t.integer :country_id
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
