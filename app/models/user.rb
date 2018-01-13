class User < ApplicationRecord
  has_many :sells
  has_many :subasta
  has_many :rentals


  validates :nombre, :dni, :nombre_usuario, :password, :email, presence: true
  validates :nombre_usuario, :email, uniqueness: true
end
