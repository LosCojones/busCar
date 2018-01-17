class Puja < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :subasta,class_name: 'Subastum'

  validates :user, :subasta, :fecha_puja, :valor, presence: true

  scope :pujasubasta, -> (id){where('subastaid = ?', id)}
end
