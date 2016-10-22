class UserType < ApplicationRecord

  has_many :users

  validates_uniqueness_of :description, message: 'el valor tiene que ser unico'

end
