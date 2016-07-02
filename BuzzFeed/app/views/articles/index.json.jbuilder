json.array!(@articles) do |article|
  json.extract! article, :id, :title, :body, :image_url, :id
  json.url article_url(article, format: :json)
end
