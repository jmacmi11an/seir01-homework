class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.text :name
      t.text :region
      t.text :feature
      t.text :period
      t.text :altitude_in_m
      t.text :image
    end
  end
end
