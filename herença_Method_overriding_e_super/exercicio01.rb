class Pessoa
  attr_accessor:nome;
  attr_reader:idade;
  attr_reader:cpf;
  def initialize(nome,idade,cpf)
      @nome = nome
      @idade = idade
      @cpf = cpf 
  end

  def feliz_aniversario
    @idade+=1	
  end

end
#####
class Funcionario<Pessoa
	attr_accessor:salario
	def initialize(nome,idade,cpf,salario) ##sobrescrever  metedos construrdores
	    super(nome,idade,cpf) #construrdores do Pessoa
        @salario = salario
	end
end
#####
class Gerente<Funcionario
    def initialize(nome,idade,cpf,salario,senha)##sobrescrever metedos construrdores
    	super(nome,idade,cpf,salario) #construrdores do Funcionario
        @senha = senha;
	end


    def autentica(tentasenha)
    	 if(@senha == tentasenha)
    	  puts "Acesso Permitido!"
    	 else
          puts "Acesso Negado!" 
    	 end
    end
end
puts "================#Pessoa#================"
p = Pessoa.new("gabriel",22,2121212);
puts p.nome; #=>"gabriel"
puts p.idade #=>22
puts p.cpf #=>2121212
puts "============#Funcionario#==============="
f = Funcionario.new("bruna",21,249284,2000)
puts f.nome; #=>"bruna"
puts f.idade #=>21
f.feliz_aniversario();#=>21+1 
puts f.idade #=>22
puts f.cpf #=>249284
puts f.salario #=>2000
puts "==============#Gerente#{}==============="
g = Gerente.new("pedro",25,48374837,5000,2727)
puts g.nome; #=>"pedro"
puts g.idade #=>25
puts g.cpf #=>48374837
puts g.salario #=>5000
g.autentica(2726) #=>"Acesso Negado!"
g.autentica(2727) #=>"Acesso Permitido!"
