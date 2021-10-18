class Pessoa
   attr_accessor :nome
end

p1 = Pessoa.new    
p1.nome = "marcos"     #setter
p1.nome = "theo"  
p1.nome = "ju"  
puts p1.nome       #getter 