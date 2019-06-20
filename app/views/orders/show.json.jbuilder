json.id @order.id
json.total @order.total
json.ordered_at @order.created_at
json.status @order.status_code
json.customer do
  json.id @order.customer.id
  json.username @order.customer.username
  json.first_name @order.customer.first_name
  json.last_name @order.customer.last_name
end
json.shipping do
  json.first_name @order.shipping_first_name
  json.last_name @order.shipping_last_name
  json.phone @order.shipping_phone
  json.postal_code @order.shipping_postal_code
  json.region @order.shipping_region
  json.locality @order.shipping_locality
  json.street_address @order.shipping_street_address
end
json.billing do
  json.first_name @order.billing_first_name
  json.last_name @order.billing_last_name
  json.phone @order.billing_phone
  json.postal_code @order.billing_postal_code
  json.region @order.billing_region
  json.locality @order.billing_locality
  json.street_address @order.billing_street_address
end
json.items @order.order_lines do |line|
  json.id line.item.id
  json.name line.name
  json.unit_price line.unit_price
  json.quantity line.quantity
  json.subtotal line.subtotal
end
