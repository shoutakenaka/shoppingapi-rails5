class CreateBrowsingHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :browsing_histories do |t|
      t.references :user
      t.references :item
      t.timestamps
    end
  end
end
