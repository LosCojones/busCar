class Coche < ApplicationRecord
  has_one :compra_ventum
  has_many :rentals
  has_one :subastum
end
