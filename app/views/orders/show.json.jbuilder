json.id @order.id
json.total @order.total
json.@ordered_at @order.created_at
json.status @order.status_code
json.user @order.user do |user| do
  json.id user.id
  json.username user.username
  json.first_name user.first_name
  json.last_name user.last_name
end
json.shipping do
  first_name @order.shipping_first_name
  last_name @order.shipping_last_name
  phone @order.shipping_phone
  postal_code @order.shipping_postal_code
  region @order.shipping_region
  locality @order.shipping_locality
  street_address @order.shipping_street_address
end
json.billing do
  first_name @order.billing_first_name
  last_name @order.billing_last_name
  phone @order.billing_phone
  postal_code @order.billing_postal_code
  region @order.billing_region
  locality @order.billing_locality
  street_address @order.billing_street_address
end
json.ordered_items @order.order_lines do |line|
  json.name line.name
  json.unit_price line.unit_price
  json.quantity line.quantity
  json.subtotal line.subtotal
end
