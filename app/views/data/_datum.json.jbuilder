json.extract! datum, :id, :first_name, :last_name, :email, :Linkdin, :phone, :created_at, :updated_at
json.url datum_url(datum, format: :json)
