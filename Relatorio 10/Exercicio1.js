class Pokemon{
    #vida = 0
    constructor(apelido,tipo, vidaInicial){
        this.apelido = apelido
        this.tipo = tipo
        this.#vida = vidaInicial
    }

    get vida(){
        return this.#vida
    }

    sofrerDano(pontos){
        if (this.#vida - pontos < 0){
            this.#vida = 0
            console.log("O pokemon morreu.")
        }
        else{
            this.#vida -= pontos
            console.log(`A vida do pokemon é ${this.#vida}`)
        }
    }

    atacar(alvo){
        console.log(`Usou um ataque e acertou ${alvo}`)
        alvo.sofrerDano(10)
    }
}

class Squirtle extends Pokemon{
    constructor(apelido, vidaInicial){
        super(apelido, "Água", vidaInicial)
    }

    atacar(alvo){
        console.log(`Squirtle usou Jato dÁgua no ${alvo.apelido}`)
        alvo.sofrerDano(20)
    }
}

class Bulbasaur extends Pokemon{
    constructor(apelido, vidaInicial){
        super(apelido, "Planta", vidaInicial)
    }

    atacar(alvo){
        console.log(`Bulbasaur usou Folha de Navalha no ${alvo.apelido}`)
        alvo.sofrerDano(15)
    }
}

const squirtle = new Squirtle("Squirtle", 45)
const bulbasaur = new Bulbasaur("Bulbasaur", 30)

bulbasaur.atacar(squirtle)

squirtle.atacar(bulbasaur)
squirtle.atacar(bulbasaur)

console.log(`A vida de Squirtle é: ${squirtle.vida}`)
console.log(`A vida de Bulbasaur é: ${bulbasaur.vida}`)


//console.log(squirtle.#vida);

///box/index.js:64
//console.log(squirtle.#vida);
//                    ^

//SyntaxError: Private field '#vida' must be declared in an enclosing class
//    at wrapSafe (node:internal/modules/cjs/loader:1713:18)
//    at Module._compile (node:internal/modules/cjs/loader:1755:20)
//    at Object..js (node:internal/modules/cjs/loader:1913:10)
//    at Module.load (node:internal/modules/cjs/loader:1505:32)
//    at Function._load (node:internal/modules/cjs/loader:1309:12)
//    at wrapModuleLoad (node:internal/modules/cjs/loader:254:19)
//    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:171:5)
//    at node:internal/main/run_main_module:36:49
