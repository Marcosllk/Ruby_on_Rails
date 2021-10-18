class Pessoa 
    def initialize(cont = 1)
        cont.times do |i|
        puts "Inicializando...#{i}"
    end

    def falar(texto = "Olá Pessoal!")
        texto
    end

def falar2(nome = "pessoal")
        "Olá, #{nome}!"
    end

def falar3(texto = "Olá!", texto2 = "Hello!")
        "Olá, #{texto2}!"
    end
end 



p1 = Pessoa.new
puts p1.falar("Olá, fulano de tal!")
puts p1.falar2("Jackson")
puts p1.falar3("oie", "Yes!")

p2 = Pessoa.new(100)
end