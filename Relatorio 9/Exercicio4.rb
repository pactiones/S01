module Depoente
    def depor
      raise NotImplementedError
    end
  end
  
  module Detivel
    def ser_detido
      puts "#{@nome} foi levado pela Scotland Yard."
    end
  end
  
  class Envolvido
    attr_reader :nome
    def initialize(nome)
      @nome = nome
    end
  end
  
  class TestemunhaOcular < Envolvido
    include Depoente
  
    def depor
      puts "#{@nome} depôs: 'vi uma pessoa passando pela Baker Street por volta das 01h30.'"
    end
  end
  
  class SuspeitoDoCrime < Envolvido
    include Depoente
    include Detivel
  
    def depor
      puts "#{@nome} apresentou o álibi: 'estava em casa dormindo nessa hora.'"
    end
  end
  
  class Investigacao
    def initialize(caso)
      @caso = caso
      @envolvidos = []
    end
  
    def registrar(envolvido)
      @envolvidos << envolvido
    end
  
    def ouvir_todos
      puts "Investigação do caso: #{@caso}"
  
      @envolvidos.each do |envolvido|
        envolvido.depor
      end
    end
  
    def acionar_scotland_yard
      @envolvidos.select do |envolvido|
        envolvido.respond_to?(:ser_detido)
      end.each do |detivel|
        detivel.ser_detido
      end
    end
end
  
testemunha = TestemunhaOcular.new("Watson")
suspeito1 = SuspeitoDoCrime.new("James Moriarty")
suspeito2 = SuspeitoDoCrime.new("Sebastian Moran")
  
investigacao = Investigacao.new("O assassinato na Baker Street")
  
investigacao.registrar(testemunha)
investigacao.registrar(suspeito1)
investigacao.registrar(suspeito2)
  
investigacao.ouvir_todos
investigacao.acionar_scotland_yard
