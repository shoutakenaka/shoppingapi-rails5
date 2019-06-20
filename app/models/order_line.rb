class OrderLine < ApplicationRecord
  belongs_to :item
  belongs_to :order

  validates :item, presence: true
  validates :order, presence: true
  validates :name, presence: true
  validates :unit_price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :subtotal, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
