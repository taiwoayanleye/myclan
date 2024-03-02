# frozen_string_literal: true

json.extract! event, :id, :title, :location, :description, :host_id, :created_at, :updated_at
json.url event_url(event, format: :json)
