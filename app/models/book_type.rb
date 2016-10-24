class BookType < ApplicationRecord

  has_many :books
  validates_uniqueness_of :description, message: "can be unique"

  #validates_format_of :email,
  #                    with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  #                    message: "Formato de correo no válido", on: :update


end
