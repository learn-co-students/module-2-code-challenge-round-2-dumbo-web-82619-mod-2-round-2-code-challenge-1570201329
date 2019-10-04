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
Customer.destroy_all
Pizza.destroy_all

Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
  id: 1
  
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
  id: 2

},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028",
  id: 3
  
}])

c1 = Customer.create(name:"Taylor")
c2 = Customer.create(name:"Marcia")
c3 = Customer.create(name:"Tyler")

p1 = Pizza.create(name:"pepperoni",ingredients:"pepperoni", restaurant_id: 1, customer_id: c1)
p2 = Pizza.create(name:"supreme", ingredients:"sausage", restaurant_id: 2, customer_id: c2)
p3 = Pizza.create(name:"buffalo", ingredients:"ranch", restaurant_id: 3, customer_id: c3)
