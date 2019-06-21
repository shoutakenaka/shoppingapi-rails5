json.orders @orders do |order|
  json.id order.id
  json.total order.total
  json.ordered_at order.created_at
  json.status order.status_code
  json.customer do
    json.id order.customer.id
    json.username order.customer.username
    json.first_name order.customer.first_name
    json.last_name order.customer.last_name
  end
end
