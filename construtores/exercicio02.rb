=begin O papagaio é inicializado com nome e idade. Os dois
podem ser alterados após a inicialização. O método
repetir_frase deve usar um parâmetro com a frase a ser
repetida. Caso não seja passado parâmetro o papagaio
deve “dizer” “curupaco!”.
Teste ao menos com 2 objetos.
=end

class Papagaio 
 attr_accessor:nome
 attr_accessor:idade 
  
  def initialize(nome="fulano",idade=nil) #metedos construtores
  @nome = nome;
  @idade = idade;
  end
  def repetir_frase (frase = "curupaco!")
 	  puts frase
  end

end

#estanciamento
papagaio1 = Papagaio.new("junior",3)

papagaio2 = Papagaio.new
papagaio2.idade =  5;

puts papagaio1.nome; #->junior
puts papagaio1.idade; #->3
papagaio1.repetir_frase(); #->curupaco!

puts papagaio2.nome; #->fulano
puts papagaio2.idade; #->5 
papagaio2.repetir_frase("olá #{papagaio1.nome}"); #->olá junior
