namespace :dev do
  desc "Configura o ambiente desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) } 
      %x(rails dev:add_mining_types) 
      %x(rails dev:add_coins)
      

    else
      puts "Você não esta em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastra as Moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando moedas...") do
  coins = [
            {
                  description: "Bitcoin",
                  acronym: "BTC",
                  url_image: "https://cdn-0.imagensemoldes.com.br/wp-content/uploads/2020/09/Ilustra%C3%A7%C3%A3o-Moeda-Bitcoin-PNG.png",
                  mining_type: MiningType.find_by(acronym: 'PoW')
            },
            {
                  description: "Ethereum",
                  acronym: "ETH",
                  url_image: "https://icons-for-free.com/iconfiles/png/512/eth+ethcoin+etherium+icon-1320162857971241492.png",
                  mining_type: MiningType.all.sample
            },
            { 
                  description: "DASH",
                  acronym: "DASH",
                  url_image: "https://toppng.com/uploads/preview/dash-cryptocurrency-11547076863fjrdiajd38.png",
                  mining_type: MiningType.all.sample
            },
            {
                  description: "Iota",
                  acronym: "IOT",
                  url_image: "https://i.pinimg.com/originals/64/ee/0a/64ee0af9de270589e6c7f00cb5c1ef01.png",
                  mining_type: MiningType.all.sample
            },
            {
  
                  description: "ZCash",
                  acronym: "ZEC",
                  url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/1437.png",
                  mining_type: MiningType.all.sample
            }                    
           ]
  
      coins.each do |coin|
          Coin.find_or_create_by! (coin)
      end
    end
  end
            

    desc "Cadastro os tipos de mineração"
    task add_mining_types: :environment do
      show_spinner("Cadastrando moedas...") do
          mining_types = [
            {description: "Proof of Work", acronym: "PoW"},
            {description: "Proof of Stake", acronym: "PoS"},
            {description: "Proof of Capacity", acronym: "PoC"}
          ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluido")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")

    
      end 
    end

