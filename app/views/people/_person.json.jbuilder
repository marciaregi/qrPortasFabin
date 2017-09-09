json.extract! person, :id, :name, :email, :phone, :imagem, :office, :created_at, :updated_at
json.url person_url(person, format: :json)
