class Coche < ApplicationRecord
  has_one :sell
  has_many :rentals
  has_one :subasta

  validates :marca, :modelo, :fecha_matriculacion, :combustible, :kms, presence: true
  scope :venta, lambda { joins(:sell).merge(Sell.disponibles) }
  scope :fecha, -> {joins(:sell)}
  #scope :marca, -> (marca){where('marca = ?', marca)}
  scope :info, -> (id){where('id = ?', id)}
end
