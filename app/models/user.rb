class User < ApplicationRecord
  has_many :sells
  has_many :subasta
  has_many :rentals


  validates :nombre, :dni, :nombre_usuario, :password, :email, presence: true
  validates :nombre_usuario, uniqueness: true
  validates :email, uniqueness: {case_sensitive: false, message: 'El correo debe ser único'}, format: {multiline: true,with: /^.+@.+$/, message: "formato de correo no valido"}
  validates :password, confirmation: true, length: {within: 6..15}

  def self.authenticate(email,password)
    user = find_by_email(email)
    return user if user && user.authenticated?(password)
  end

  def authenticated?(password)
    self.password == password
  end

  protected
  def password_required?
    password.blank? || password.present?
  end
end