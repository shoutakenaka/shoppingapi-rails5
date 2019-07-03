json.browsing_histories @browsing_histories do |o|
  json.recent_browsed_at o.updated_at
  json.item do
    json.id o.item.id
    json.name o.item.name
    json.category do
      json.id o.item.category.id
      json.name o.item.category.name
    end
    json.unit_price o.item.unit_price
    json.image_url "#{@base_url}/#{o.item.id}/image"
  end
end
