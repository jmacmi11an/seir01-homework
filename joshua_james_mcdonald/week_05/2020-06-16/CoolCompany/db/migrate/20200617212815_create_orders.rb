class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :datePlaced
      t.text :orderStatus
      t.references :customers
      
    end
  end
end
