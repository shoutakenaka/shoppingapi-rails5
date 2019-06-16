class Order < ApplicationRecord
  belongs_to :customer, foreign_key: :user_id
  has_many :order_lines
  
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
