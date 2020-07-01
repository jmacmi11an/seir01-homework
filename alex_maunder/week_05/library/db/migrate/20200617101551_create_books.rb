class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :year
      t.text :publisher
      t.text :image
      t.text :bio
    end
  end
end
