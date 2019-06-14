class CreateCartLines < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_lines do |t|

      t.timestamps
    end
  end
end
