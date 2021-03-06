class Item < ApplicationRecord
  belongs_to :category

  has_one_attached :image

  validates :name, presence: true
  validates :unit_price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
