class CreateClinicTypes < ActiveRecord::Migration
  def change
    create_table :clinic_types do |t|
      t.string :label

      t.timestamps
    end
  end
end
