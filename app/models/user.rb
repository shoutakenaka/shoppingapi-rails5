class User < ApplicationRecord
  def admin?
    type == Admin.name
  end
end
