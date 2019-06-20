json.total @cart.total
json.items @cart.cart_lines do |line|
  json.id line.item.id
  json.name line.item.name
  json.unit_price line.item.unit_price
  json.quantity line.quantity
  json.subtotal line.item.unit_price * line.quantity
end
