class CreateCartLines < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_lines do |t|
      t.references :cart
      t.references :item
      t.integer :quantity
      t.timestamps
    end
  end
end
