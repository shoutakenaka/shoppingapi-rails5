class User < ApplicationRecord
  has_secure_password

  has_many :browsing_histories
  has_many :sessions

  def admin?
    type == Admin.name
  end

  def customer?
    type == Customer.name
  end
end
