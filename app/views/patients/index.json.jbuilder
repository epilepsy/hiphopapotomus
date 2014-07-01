json.array!(@patients) do |patient|
  json.extract! patient, :id, :given_name, :family_name, :dob, :sex
  json.url patient_url(patient, format: :json)
end
