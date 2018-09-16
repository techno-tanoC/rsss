json.extract! item, :id, :title, :url, :published_at, :feed_id, :created_at, :updated_at
json.url item_url(item, format: :json)
