
Beer.destroy_all
Style.destroy_all
Brewery.destroy_all
User.destroy_all

#User
@user = User.new(
      :email                 => "admin@admin",
      :password              => "123456",
      :password_confirmation => "123456"
  )
@user.save!

#Brasserie
Brewery.create(name: 'Guiness',country:'Irlande', address:'Dublin', user_id:@user.id)
Brewery.create(name: 'Brasserie Duyck',country:'France', address:'Jenlain', user_id:@user.id)
Brewery.create(name: 'Brewdog',country:'UK', address:'Londres', user_id:@user.id)

#Styles
Style.create(name:'Brune', info:'Robe sombre et cafféinés', user_id:@user.id)
Style.create(name:'Ambrée', info:'Cuivrées et sucrées', user_id:@user.id)
Style.create(name:'IPA', info:'Améres et Houblonnées', user_id:@user.id)

#Beers
Beer.create(name:"Guiness", price:3, rating:4, desc:"Sombre et légendaire", brewery_id: 1, style_id: 1)
Beer.create(name:"Jenlain Ambrée", price:4, rating:1, desc:"Sucrée et légére", brewery_id: 2, style_id: 2)
Beer.create(name:"Punk IPA", price:4, rating:1, desc:"Amére et rebelle", brewery_id: 3, style_id: 3)
