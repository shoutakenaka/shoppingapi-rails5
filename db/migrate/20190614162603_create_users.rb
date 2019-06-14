class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :phone
      t.string :postal_code
      t.string :region
      t.string :locality
      t.string :street_address
      t.timestamps
    end
  end
end
