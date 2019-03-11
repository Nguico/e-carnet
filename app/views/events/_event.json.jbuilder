json.extract! event, :id, :titre, :commentaire, :date, :created_at, :updated_at
json.url event_url(event, format: :json)
