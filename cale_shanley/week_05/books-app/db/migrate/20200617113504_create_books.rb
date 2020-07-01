class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :name
      t.text :author
      t.date :date
      t.text :image
      t.integer "book_id"
    end
  end
end
