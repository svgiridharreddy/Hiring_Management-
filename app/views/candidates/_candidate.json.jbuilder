json.extract! candidate, :id, :name, :email, :experience, :ctc, :expected_ctc, :mobile, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)