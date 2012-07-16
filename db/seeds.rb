# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
depto = Depto.create(depto_id: '1', depto_name: 'Vista Arauco 1')
puts 'New depto created: ' << depto.depto_name
jorge = User.create! :name => 'Jorge Chartier', :email => 'jorge@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc, :depto_id => '1'
puts 'New user created: ' << jorge.name
paula = User.create! :name => 'Paula Larios', :email => 'paula@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc, :depto_id => '1'
puts 'New user created: ' << paula.name
jorge.add_role :admin
clases = Item.create(item_id: '1', user_id: '1', depto_id: '1', item_name: 'Clases particulares', item_price: '15000', item_ini: Time.now.utc, item_description: 'Clases de matematicas a domicilio')
puts 'New item created: ' << clases.item_name
auto = Item.create(item_id: '2', user_id: '1', depto_id: '1', item_name: 'Auto', item_price: '60000000', item_ini: Time.now.utc, item_description: 'Subaru Impreza 2001')
puts 'New item created: ' << auto.item_name
joyas = Item.create(item_id: '3', user_id: '2', depto_id: '1', item_name: 'Joyas', item_price: '4000', item_ini: Time.now.utc, item_description: 'Joyas hechas a mano')
puts 'New item created: ' << joyas.item_name
guitarra = Item.create(item_id: '4', user_id: '1', depto_id: '1', item_name: 'Guitarra electrica', item_price: '100000', item_ini: Time.now.utc, item_description: 'Guitarra electrica Yamaha')
puts 'New item created: ' << guitarra.item_name