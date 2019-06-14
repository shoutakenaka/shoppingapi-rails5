class CreateOrderLines < ActiveRecord::Migration[5.2]
  def change
    create_table :order_lines do |t|
      t.references :order
      t.references :item
      t.string :name
      t.integer :unit_price
      t.integer :quantity
      t.integer :subtotal
      t.timestamps
    end
  end
end
