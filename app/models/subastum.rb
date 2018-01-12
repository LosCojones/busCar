class Subastum < ApplicationRecord
  belongs_to :coche
  belongs_to :comprador, class_name: 'User'
  belongs_to :vendedor, class_name: 'User'
  belongs_to :puja, class_name: 'Puja', optional: true
end
