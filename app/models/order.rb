class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_lines, dependent: :delete_all

  validates :customer, presence: true
  validates :total, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :status, presence: true
  validates :shipping_first_name, presence: true
  validates :shipping_last_name, presence: true
  validates :shipping_phone, presence: true
  validates :shipping_postal_code, presence: true
  validates :shipping_region, presence: true
  validates :shipping_locality, presence: true
  validates :shipping_street_address, presence: true
  validates :billing_first_name, presence: true
  validates :billing_last_name, presence: true
  validates :billing_phone, presence: true
  validates :billing_postal_code, presence: true
  validates :billing_region, presence: true
  validates :billing_locality, presence: true
  validates :billing_street_address, presence: true

  def status_code
    case status
    when 1 then 'ordered'
    when 2 then 'shipped'
    when 3 then 'cancelled'
    end
  end

  def ordered?
    status == 1
  end

  def shipped?
    status == 2
  end

  def cancelled?
    status == 3
  end
end
