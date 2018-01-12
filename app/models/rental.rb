class Rental < ApplicationRecord
  belongs_to :coche
  belongs_to :alquilador, class_name: 'User'
  belongs_to :alquilado, class_name: 'User'
end
