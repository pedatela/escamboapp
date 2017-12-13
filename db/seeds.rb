# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Cadastrando as Categorias"

categories = [ "Animais e Acessórios",
               "Esportes",
               "Para a sua Casa",
               "Eletrônicos e Celulares",
               "Música e Hobbies",
               "Bebês e Crianças",
               "Moda e Beleza",
               "Veículos e Barcos",
               "Imóveis",
               "Empregos e Negócio" ]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "Categorias cadastradas com sucesso!"

#################################################

puts "Cadastrando o ADMINISTRADOR Padrão..."

Admin.create!(
  name: "Administrador Geral",
  email: "admin@admin.com",
  password: "123456",
  password_confirmation: "123456",
  role: 0
)

puts "ADMINISTRADOR cadastrado com sucesso!"
#######################################################
