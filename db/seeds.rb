# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
jorge = User.create! :name => 'Jorge Chartier', :email => 'jorge@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc 
puts 'New user created: ' << jorge.name
paula = User.create! :name => 'Paula Larios', :email => 'paula@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << paula.name
jorge.add_role :admin
iphone5 = Cube.create(cube_id: '1', user_id: '1', cube_name: '#iPhone5', cube_account: 'Apple')
puts 'New item created: ' << iphone5.cube_name
lollapaloozacl = Cube.create(cube_id: '2', user_id: '1', cube_name: '#Lollapaloozacl', cube_account: 'Lollapaloozacl')
puts 'New item created: ' << lollapaloozacl.cube_name
tomasgonzalez1 = Cube.create(cube_id: '3', user_id: '1', cube_name: '#tomasgonzalez1', cube_account: 'tomasgonzalez1', cube_rating: '5', cube_out_to_date: true)
puts 'New item created: ' << tomasgonzalez1.cube_name
simonaCastro = Cube.create(cube_id: '4', user_id: '1', cube_name: '#SimonaCastro', cube_rating: '4', cube_out_to_date: true)
puts 'New item created: ' << simonaCastro.cube_name