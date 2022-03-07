json.extract! listing, :id, :title, :price, :open, :user_id, :short_body, :created_at, :updated_at
json.url listing_url(listing, format: :json)
