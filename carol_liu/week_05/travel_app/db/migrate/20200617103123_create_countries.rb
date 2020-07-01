class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.text :name
      t.text :capital
      t.text :official_language
      t.text :area_in_sqkm
      t.text :population
      t.text :flag
    end
  end
end
