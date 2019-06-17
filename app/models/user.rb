class User < ApplicationRecord
  has_secure_password

  def admin?
    type == Admin.name
  end

  def customer?
    type == Customer.name
  end
end
