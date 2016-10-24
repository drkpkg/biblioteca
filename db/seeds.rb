# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# encoding: utf-8

require 'digest'
md5 = Digest::MD5.new

type = UserType.create(description: 'alumno')
user = User.create(name: 'Cosme',
                   last_name: 'Fulanito',
                   birthdate: '10/10/1992',
                   code: '123456',
                   password: md5.update('12345'),
                   user_type_id: UserType.first.id)
tipos_de_libros = ["Economía",
                  "Informática",
                  "Leyes",
                  "Turismo",
                  "Cocina",
                  "Tesis",
                  "Horror"]

tipos_de_libros.each do |tipo|
  book = BookType.create(description: tipo)
  puts book.errors.full_messages
end
