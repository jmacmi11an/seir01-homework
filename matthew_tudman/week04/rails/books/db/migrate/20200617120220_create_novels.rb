class CreateNovels < ActiveRecord::Migration[5.2]
  def change
    create_table :novels do |t|
      t.text :title
      t.text :year
      t.integer :length
      t.text :genre
      t.text :image
    end
  end
end
