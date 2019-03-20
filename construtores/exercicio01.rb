=begin O cachorro recebe a raça e o nome da inicialização. Não é
permitido trocar a raça do cachorro depois de inicializado o
objeto. O cachorro pode latir “au au!” por padrão ou
personalizado através de parâmetro.
Teste ao menos com 2 objetos
=end

class Cachorro 
  @nome = nil;
  @raça = nil;
 def initialize(nome="fulano",raça="viralata") #metedos construtores
  @nome = nome;
  @raça = raça;        
 end 

   def nome=(nome)
   	@nome = nome
   end

   def nome
    @nome 
   end

   def raça
   	@raça
   end


   def latir(latir = "AuAu!")
   	 puts latir
   end

 end 

cachorro1 = Cachorro.new("mine","pug");

cachorro2 =Cachorro.new
#cachorro2.raça = "pitbull" #error ,não pod mudar  raça

puts cachorro1.nome
puts cachorro1.raça;
cachorro1.latir("Au Au Au!");

puts cachorro2.nome
puts cachorro2.raça;
cachorro2.latir();
