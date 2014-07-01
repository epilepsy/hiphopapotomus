json.array!(@notes) do |note|
  json.extract! note, :id, :patient_id, :user_id, :primary_author, :primary_institution, :body_text, :ocr, :type, :title, :filing_date
  json.url note_url(note, format: :json)
end
