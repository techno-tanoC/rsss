json.extract! item, :id, :title, :url, :checked, :feed_id, :published_at, :created_at, :updated_at
json.url item_url(item, format: :json)
