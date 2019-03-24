# define classe,atributos,metedos e obejto

class Pessoa #classe
     attr_accessor:nome #atributo
     def fala(fala="olá") #metedos
      fala 
     end

end

pessoa1 = Pessoa.new  # geram um objeto na instância da classe Pessoa
pessoa1.nome = "gabriel"

puts pessoa1.fala("olá  meu nome é #{pessoa1.nome}") # =>olá meu nome é gabriel 
