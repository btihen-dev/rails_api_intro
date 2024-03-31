json.extract! person, :id, :nick_name, :first_name, :last_name, :given_name, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)
