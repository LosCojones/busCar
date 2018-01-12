json.extract! rental, :id, :coche_id, :alquilador_id, :alquilado_id, :fecha_creacion_anuncio, :fecha_fin_anuncio, :fecha_inicio_alquiler, :fecha_fin_alquiler, :precio, :created_at, :updated_at
json.url rental_url(rental, format: :json)
