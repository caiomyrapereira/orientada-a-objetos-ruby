=begin O cachorro recebe a raça e o nome da inicialização. Não é
permitido trocar a raça do cachorro depois de inicializado o
objeto. O cachorro pode latir “au au!” por padrão ou
personalizado através de parâmetro.
Teste ao menos com 2 objetos
=end
class Cachorro 
 
 attr_accessor:nome; # exe: (def nome=(nome); @nome=nome; end) e (def nome; @nome; end)
 attr_reader:raça; # exe:def raça; @raça; end
 def initialize(nome="fulano",raça="viralata") #metedos construtores
  @nome = nome;
  @raça = raça;        
 end 

   def latir(latir = "AuAu!")
   	 puts latir
   end

 end 

cachorro1 = Cachorro.new("mine","pug");

cachorro2 =Cachorro.new
#cachorro2.raça = "ddsad" #->error ,EX:não pod altera  raça

puts cachorro1.nome #->mine
puts cachorro1.raça; #->pug
 cachorro1.latir("Au Au Au!");#->Au Au Au!

puts cachorro2.nome #->fulano
puts cachorro2.raça; #->viralata
cachorro2.latir(); #->AuAu!
