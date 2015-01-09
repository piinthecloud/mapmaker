class CreateGeoData < ActiveRecord::Migration
  def change
    create_table :geo_data do |t|
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
