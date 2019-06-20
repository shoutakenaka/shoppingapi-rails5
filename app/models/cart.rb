class Cart < ApplicationRecord
  belongs_to :customer, foreign_key: :user_id
  has_many :cart_lines
  
  validates :customer, presence: true
  validates :total, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
