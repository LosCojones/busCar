class Sell < ApplicationRecord
  belongs_to :coche
  belongs_to :comprador, :class_name => 'User', :foreign_key => 'comprador_id'
  belongs_to :vendedor, :class_name => 'User', :foreign_key => 'vendedor_id'
end
