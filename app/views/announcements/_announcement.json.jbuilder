json.extract! announcement, :id, :cpdevent_id, :announcement_id, :user_id, :title, :body, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
