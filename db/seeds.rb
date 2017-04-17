# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stores = Store.create [
  {name: 'Costco'},
  {name: 'Star Market'}
]
users = User.create [
  {name: 'Lolo'},
  {name: 'Max'},
  {name: 'Chris'},
  {name: 'Noel'},
  {name: 'Margaret'},
  {name: 'James'}
]
items = Item.create [
  {taxed: false, product_id: 31865, name: 'BAGELS', unit_price: 549},
  {taxed: false, product_id: 664927, name: 'CNNMN TOAST', unit_price: 699},
  {taxed: false, product_id: 161986, name: 'CPN/664927', unit_price: -210},
  {taxed: false, product_id: 945452, name: 'SPEC K RED', unit_price: 899},
  {taxed: true, product_id: 1030846, name: 'ADIDASMADURO', unit_price: 2999},
  {taxed: true, product_id: 1030846, name: 'ADIDASMADURO', unit_price: 2999},
]
receipts = Receipt.create [
  {store: stores[0], purchase_date: '2017-04-17', purchaser: users[0], items: items}
]
