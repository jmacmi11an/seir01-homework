class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.text :title
      t.integer :plot
      t.date :premiere
      t.text :place
      t.text :image
    end
  end
end
