class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.text :internetEmail
      t.text :name
      t.text :phoneMobile

    end
  end
end
