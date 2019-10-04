# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all
Restaurant.reset_pk_sequence

Pizza.destroy_all
Pizza.reset_pk_sequence
 
r1= Restaurant.create( name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201" )
# },
# {
#   name: "PizzArte",
#   address: "69 W 55th St, New York, NY 10019",
# },
# {
#   name: "San Matteo NYC",
#   address: "1559 2nd Ave, New York, NY 10028"
# }])

p1 = Pizza.create(name: "Supreme", ingredients: "peppers", restaurant_id: r1.id)