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

alumno = UserType.create(description: 'alumno')
admin = UserType.create(description: 'admin')

user = User.create(name: 'Cosme',
                   last_name: 'Fulanito',
                   birthdate: '10/10/1992',
                   code: '123456',
                   password: md5.update('12345'),
                   user_type_id: alumno.id)

user = User.create(name: 'Admin',
                   last_name: 'Fulanito',
                   birthdate: '10/10/1992',
                   code: '100000',
                   password: md5.update('12345'),
                   user_type_id: admin.id)

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

images = []
12.times do |i|
  images.push(File.open(File.join(Rails.root,"/doc/images/#{i+1}.jpg")))
end

libros = [[title: 'Copying and pasting from stack overflow', description: 'The essential guide', copies: 1, book_type_id: 6, isbn: "123456789", cover: images[0]],
[title: 'Resumé Driven Development', description: 'The essential guide', copies: 2, book_type_id: 6, isbn: "A23456789", cover: images[1]],
[title: 'Blaming the user', description: 'The essential guide', copies: 5, book_type_id: 6, isbn: "12345Q6789", cover: images[2]],
[title: 'Googling Error Messages', description: 'The essential guide', copies: 4, book_type_id: 6, isbn: "1234567I89", cover: images[3]],
[title: 'Whiteboard interviews', description: 'The essential guide', copies: 8, book_type_id: 6, isbn: "123456H789", cover: images[4]],
[title: 'Writing code that nobody else can read', description: 'The definitive guide', copies: 1, book_type_id: 6, isbn: "123456789P", cover: images[5]],
[title: 'Temporary Workarounds', description: 'The essential guide', copies: 3, book_type_id: 6, isbn: "1234567W89", cover: images[6]],
[title: 'Trying stuff until works', description: 'The essential guide', copies: 9, book_type_id: 6, isbn: "12345H6789", cover: images[7]],
[title: 'Rewriting your front end every six weeks', description: 'The essential guide', copies: 2, book_type_id: 6, isbn: "12E3456789", cover: images[8]],
[title: 'Taking on needless dependencies', description: 'Fragile Development guide', copies: 5, book_type_id: 6, isbn: "12345G6789", cover: images[9]],
[title: 'Excuses for not writing unit tests', description: 'The essential guide', copies: 7, book_type_id: 6, isbn: "1234567F89", cover: images[10]],
[title: 'How to draw a howl', description: 'A fun guide for begginers', copies: 0, book_type_id: 6, isbn: "123S456789", cover: images[11]]]

libros.each do |libro|
  libro = Book.create(libro)
  # puts libro.errors.full_messages
end
