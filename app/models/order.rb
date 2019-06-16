class Order < ApplicationRecord
  belongs_to :customer, foreign_key: :user_id
  has_many :order_lines
end
