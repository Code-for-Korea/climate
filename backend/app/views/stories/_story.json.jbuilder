json.extract! story, :id, :title, :press, :author, :published, :url, :created_at, :updated_at
json.url story_url(story, format: :json)
