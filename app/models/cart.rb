class Cart < ApplicationRecord
  belongs_to :customer, foreign_key: :user_id
  has_many :cart_lines
end
