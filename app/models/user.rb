class User < ApplicationRecord
  has_many :compra_ventums
  has_many :rentals
  has_many :subastums
end
