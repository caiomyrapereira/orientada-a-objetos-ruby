# criando um jogo "Adivinhar o número sorteado

class AdivinhaNumero ## quanto as vezes ele tentou 
@numero=nil; 
@vitoria=nil;
@tentativa =nil;
       def initialize
       @numero=Random.new.rand(1..100); #vai seleciona 1 ao 10;
       @vitoria = false
       @tentativa=0;
       end 

       def adivinhar(numero = 0)
       	@tentativa+=1;
       	if (@numero == numero)
       	  @vitoria = true
       	  puts "vc venceu ,com #{@tentativa}tentativa" 
       	  
       	  elsif (numero>@numero)
       	  @vitoria = false
          puts "o numero infomado é maior"
          else
          @vitoria = false
          puts  "o numero infomado é menor "
       	 end	
       end

      def vitoria
      @vitoria
      end
end


jogo=AdivinhaNumero.new 
until(jogo.vitoria)do   # adivinha ate acertar numero.
	puts "digite um numero 1 ao 10??"
	numero = gets.to_i
	 jogo.adivinhar(numero)
end
