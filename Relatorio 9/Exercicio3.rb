class PhoneWave
    def enviar_dmail(mensagem)
      puts "Mensagem: #{mensagem}"
      puts "A mensagem foi enviada para o passado."
    end
  end
  
  class MembroDoLab
    attr_reader :numero, :nome
    def initialize(numero, nome)
      @numero = numero
      @nome = nome
    end
  end
  
  class LaboratorioDeGadgets
    def initialize
      @phonewave = PhoneWave.new
      @membros = []
    end
  
    def admitir(membro)
      @membros << membro
      puts "Membro número #{membro.numero}, nome: #{membro.nome}"
    end
  
    def experimento(mensagem)
      @membros.each do |membro|
        puts "Membro número #{membro.numero}: #{membro.nome} está presente."
      end
  
      @phonewave.enviar_dmail(mensagem)
    end
end

membro1 = MembroDoLab.new(1, "Okabe")
membro2 = MembroDoLab.new(2, "Kurisu")
  
laboratorio = LaboratorioDeGadgets.new
  
laboratorio.admitir(membro1)
laboratorio.admitir(membro2)
  
laboratorio.experimento("Primeiro experimento do laboratório vai começar em 3..2..1......")

# Composição: o PhoneWave é criado dentro do laboratório e faz parte dele.
# Agregação: os membros são criados fora do laboratório e podem existir sem ele.
