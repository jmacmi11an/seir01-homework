class CreateComposers < ActiveRecord::Migration[5.2]
  def change
    create_table :composers do |t|
      t.text :name
      t.text :nationality
      t.date :dob
      t.text :image
    end
  end
end
