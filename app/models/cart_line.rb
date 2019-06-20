class CartLine < ApplicationRecord
  belongs_to :cart
  belongs_to :item

  validates :cart, presence: true
  validates :item, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
