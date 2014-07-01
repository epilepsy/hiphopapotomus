json.array!(@charges) do |charge|
  json.extract! charge, :id, :service_date, :user_id, :code, :note_id
  json.url charge_url(charge, format: :json)
end
