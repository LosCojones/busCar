class Sell < ApplicationRecord
  belongs_to :coche
  belongs_to :comprador, :class_name => 'User', :foreign_key => 'comprador_id', optional: true
  belongs_to :vendedor, :class_name => 'User', :foreign_key => 'vendedor_id'

  validates :comprador, presence: false

  scope :disponibles, -> {where(comprador: nil)}

  def create(coche, comprador, vendedor, fecha_publicacion, fecha_compra, precio)
    @venta = Sell.new
    @venta.update(coche, comprador, vendedor, fecha_publicacion, fecha_compra, precio)
    @venta.save
  end
end
