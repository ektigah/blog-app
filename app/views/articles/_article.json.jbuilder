json.extract! article, :id, :title, :description, :picture, :created_at, :updated_at
json.url article_url(article, format: :json)
