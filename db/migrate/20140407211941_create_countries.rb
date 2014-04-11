class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :label

      t.timestamps
    end
  end
end
