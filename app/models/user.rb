class User < ApplicationRecord
  def admin?
    type == Admin.name
  end

  def customer?
    type == Customer.name
  end
end
