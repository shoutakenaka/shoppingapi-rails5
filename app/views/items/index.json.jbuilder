json.items @items do |item|
  json.id item.id
  json.name item.name
  json.unit_price item.unit_price
  json.image_url "#{@base_url}/#{item.id}/image"
end
