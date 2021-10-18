# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando as Moedas"

Coin.create!(
 description: "Bitcoin",
 acronym: "BTC",
 url_image: "https://cdn-0.imagensemoldes.com.br/wp-content/uploads/2020/09/Ilustra%C3%A7%C3%A3o-Moeda-Bitcoin-PNG.png",
)

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://icons-for-free.com/iconfiles/png/512/eth+ethcoin+etherium+icon-1320162857971241492.png",
   )

Coin.create!(
    description: "DASH",
    acronym: "DASH",
    url_image: "https://toppng.com/uploads/preview/dash-cryptocurrency-11547076863fjrdiajd38.png",
   )
      
   puts "Moedas cadastrados com sucesso"