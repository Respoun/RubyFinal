# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Beer.destroy_all
Style.destroy_all
Brewery.destroy_all

@brewery = Brewery.create(name: 'A cote',country:'France', address:'yabillons' )
Brewery.create(name: 'A cottre',country:'France', address:'yillons' )
@style = Style.create(name:'brune', info:'info')
Style.create(name:'tre', info:'info')
Beer.create(name:"beer1", price:1, rating:4, desc:"desc", brewery: @brewery, style: @style)
