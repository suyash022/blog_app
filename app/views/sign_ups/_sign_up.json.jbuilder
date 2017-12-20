json.extract! sign_up, :id, :name, :email, :password, :address, :created_at, :updated_at
json.url sign_up_url(sign_up, format: :json)
