require_relative 'pagamento'

include Pagamento::Master    # PARA EU ULTILIZAR UM MODULO DENTRO DE OUTRO MUDULO PRECISO PASSAR O COMANDO INCLUDE PAGAMENTO::MASTER

puts Pagamento::Master::pagando