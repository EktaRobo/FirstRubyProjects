json.extract! item, :id, :name, :price_per_unit, :unit, :units_in_stock, :created_at, :updated_at
json.url item_url(item, format: :json)
