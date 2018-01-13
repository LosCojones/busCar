class Rental < ApplicationRecord
  belongs_to :coche
  belongs_to :alquilador, class_name: 'User', :foreign_key => 'alquilador_id'
  belongs_to :alquilado, class_name: 'User', :foreign_key => 'alquilado_id'

  validates :coche, :alquilador, :fecha_creacion_anuncio, :fecha_fin_anuncio, :precio, presence: true
end
