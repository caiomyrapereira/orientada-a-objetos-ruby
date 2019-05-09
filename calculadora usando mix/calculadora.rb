

require_relative "soma"
require_relative "subtracao"
require_relative "multiplicacao"
require_relative "divisao"


class Calculadora 


include M_soma
include M_subtracao
include M_multiplicacao
include M_divisao

end



c1  = Calculadora.new
puts c1.soma(10,10)
puts c1.subtracao(10,5)
puts c1.multiplicacao(10,6)
puts c1.divisao(10,3)

puts c1.soma
puts c1.subtracao
puts c1.multiplicacao
puts c1.divisao