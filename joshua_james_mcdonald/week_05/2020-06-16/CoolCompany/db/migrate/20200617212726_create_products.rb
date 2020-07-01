class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.number :cost
      t.int :stockLevel
      t.text :productName
      t.text :description
    end
  end
end
