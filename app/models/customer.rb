class Customer < User
  has_one :cart
  has_many :orders

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :postal_code, presence: true
  validates :region, presence: true
  validates :locality, presence: true
  validates :street_address, presence: true
end
