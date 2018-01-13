class Coche < ApplicationRecord
  has_one :sell
  has_many :rentals
  has_one :subasta

  validates :marca, :modelo, :fecha_matriculacion, :combustible, :kms, presence: true
end
