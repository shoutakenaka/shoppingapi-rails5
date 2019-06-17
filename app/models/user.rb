class User < ApplicationRecord
  has_secure_password

  has_many :sessions

  def admin?
    type == Admin.name
  end

  def customer?
    type == Customer.name
  end
end
