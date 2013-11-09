json.array!(@articles) do |article|
  json.extract! article, :name, :text, :image
  json.url article_url(article, format: :json)
end
