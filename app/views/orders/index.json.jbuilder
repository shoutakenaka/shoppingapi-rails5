json.orders @orders do |order|
  json.id order.id
  json.total order.total
  json.ordered_at order.created_at
  json.status order.status_code
  json.user order.user do |user| do
    json.id user.id
    json.username user.username
    json.first_name user.first_name
    json.last_name user.last_name
  end
end
