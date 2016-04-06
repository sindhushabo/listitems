json.array!(@shop_lists) do |shop_list|
  json.extract! shop_list, :id, :title, :description
  json.url shop_list_url(shop_list, format: :json)
end
