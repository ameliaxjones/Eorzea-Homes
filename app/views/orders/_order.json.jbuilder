json.extract! order, :id, :listing_id, :user_id, :purchase_price, :game_address_id, :purchase_status, :created_at, :updated_at
json.url order_url(order, format: :json)
