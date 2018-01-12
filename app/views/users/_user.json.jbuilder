json.extract! user, :id, :nombre, :dni, :nombre_usuario, :password, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
