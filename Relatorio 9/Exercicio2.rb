class Instrumentista
    attr_reader :nome, :instrumento
    def initialize(nome, instrumento)
      @nome = nome
      @instrumento = instrumento
    end
  
    def interpretar_peca(peca)
      raise NotImplementedError, "Este método deve ser implementado pela classe filha"
    end
  end
  
  class Solista < Instrumentista
    def interpretar_peca(peca)
      puts "#{@nome} está tocando #{@instrumento} na peça #{peca} e está conduzindo a melodia principal."
    end
  end
  
  class Acompanhador < Instrumentista
    def interpretar_peca(peca)
      puts "#{@nome} está tocando #{@instrumento} na peça #{peca} e está acompanhando o ritmo do solista."
    end
  end
  
  class Regente
    def initialize(nome)
      @nome = nome
      @orquestra = []
    end
  
    def convocar(instrumentista)
      @orquestra << instrumentista
    end
  
    def reger(peca)
      puts "#{@nome} está regendo a peça: #{peca}"
  
      @orquestra.each do |instrumentista|
        instrumentista.interpretar_peca(peca)
      end
    end
  
    def escalacao
      @orquestra.map do |instrumentista|
      end
    end
  end
  
  solista = Solista.new("Kaori", "Violino")
  acompanhador = Acompanhador.new("Arima", "Piano")
  regente = Regente.new("Hiroko")
  
  regente.convocar(solista)
  regente.convocar(acompanhador)
  
  regente.reger("Introduction and Rondo Capriccioso, Op. 28")
  
  regente.escalacao.each do |texto|
    puts texto
  end
