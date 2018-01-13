class Subastum < ApplicationRecord
  belongs_to :coche
  belongs_to :comprador, class_name: 'User', :foreign_key => 'comprador_id'
  belongs_to :vendedor, class_name: 'User', :foreign_key => 'vendedor_id'
  belongs_to :puja, class_name: 'Puja', optional: true

  validates :coche, :vendedor, :fecha_publicacion, :fecha_limite, :valor_compra, presence:true
  validates :coche, uniqueness: true
end
