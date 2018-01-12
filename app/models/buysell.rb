class Buysell < ApplicationRecord
  belongs_to :coche
  belongs_to :comprador, class_name: 'User'
  belongs_to :vendedor, class_name: 'User'
end
