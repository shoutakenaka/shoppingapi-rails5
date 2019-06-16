class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user
      t.integer :total
      t.integer :status
      t.string :shipping_first_name
      t.string :shipping_last_name
      t.string :shipping_phone
      t.string :shipping_postal_code
      t.string :shipping_region
      t.string :shipping_locality
      t.string :shipping_street_address
      t.string :billing_first_name
      t.string :billing_last_name
      t.string :billing_phone
      t.string :billing_postal_code
      t.string :billing_region
      t.string :billing_locality
      t.string :billing_street_address
      t.timestamps
    end
  end
end
