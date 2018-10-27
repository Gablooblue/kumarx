json.extract! cpd_event, :id, :cpdevent_id, :name, :date, :description, :created_at, :updated_at
json.url cpd_event_url(cpd_event, format: :json)
