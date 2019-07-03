json.id @item.id
json.name @item.name
json.category do
  json.id @item.category.id
  json.name @item.category.name
end
json.description @item.description
json.unit_price @item.unit_price
json.image_url "#{@base_url}/image"
