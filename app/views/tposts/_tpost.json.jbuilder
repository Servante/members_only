json.extract! tpost, :id, :title, :body, :created_at, :updated_at
json.url tpost_url(tpost, format: :json)
