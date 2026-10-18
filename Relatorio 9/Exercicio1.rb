class CoquetelAfterlife
    attr_reader :nome

    def initialize(nome, preco)
        @nome = nome
        @_preco = preco
    end

    def preco
        @_preco
    end

    def preco=(valor)
        if valor >= 5 && valor <= 200
            @_preco = valor
        else
            "Preço inválido!"
        end
    end

    def ficha
        "#{@nome}, #{@_preco}."
    end
end

class DrinkDeLenda < CoquetelAfterlife
    attr_reader :lenda
  
    def initialize(nome, preco, lenda)
      super(nome, preco)
      @lenda = lenda
    end
  
    def ficha
      "#{super} Drink homenageado: #{@lenda}."
    end
  end
  
  drinks = [
    CoquetelAfterlife.new("Jackie Welles", 20),
    DrinkDeLenda.new("The Silverhand", 35, "Johnny Silverhand"),
    DrinkDeLenda.new("The Rogue", 50, "Rogue Amendiares")
  ]
  
  drinks.each do |drink|
    puts drink.ficha
  end
  
  drink_de_lenda = drinks[1]
  
  drink_de_lenda.preco = 500
  puts drink_de_lenda.preco
  
  drink_de_lenda.preco = 80
  puts drink_de_lenda.ficha 
  
  #drinks[0].nome = "Outro nome"
