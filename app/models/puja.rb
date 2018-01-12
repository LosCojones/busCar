class Puja < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :subasta,class_name: 'Subastum'
end
