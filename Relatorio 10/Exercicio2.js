class Pistola{
    constructor(modelo){
        this.modelo = modelo
    }
}
class AgenteProtocolo{
    #pistola;
    constructor(codinome, modeloDaPistola){
        this.codinome = codinome
        this.#pistola = new Pistola(modeloDaPistola)
    }

    usarHabilidade(){
        throw new Error("Agente sem habilidade no momento")
    }

    entrarEmCombate(){
        console.log(`\nAgente selecionado: ${this.codinome} | Modelo da pistola: ${this.#pistola.modelo} | Sua habilidade é: ${this.usarHabilidade()}`)
    }
}

class Controlador extends AgenteProtocolo{
    usarHabilidade(){
        return `Paranóia`
    }
}

class Iniciador extends AgenteProtocolo{
    usarHabilidade(){
        return `Flecha Rastreadora`
    }
}

class Duelista extends AgenteProtocolo{
    usarHabilidade(){
        return `Via Expressa`
    }
}

class Esquadrao{
    #agentes;
    constructor(nome, agentes = []){
        this.nome = nome
        this.#agentes = agentes
    }

    iniciarPartida(){
        console.log(`O esquadrão ${this.nome} está preparado`)

        this.#agentes.forEach(a => {a.entrarEmCombate()});
    }

    listarControladores() {
        return this.#agentes.filter(c => c instanceof Controlador)
    }
}

const omen = new Controlador("Omen", "Ghost")
const clove = new Controlador("Clove", "Classic")
const sova = new Iniciador("Sova", "Classic")
const neon = new Duelista("Neon", "Frenzy")

const loud = new Esquadrao("Loud", [omen, clove, sova, neon])

loud.iniciarPartida()
console.log("\nA equipe é formada pelos seguintes controladores: ")
loud.listarControladores().forEach(c => console.log(`${c.codinome}`))

const sage = new AgenteProtocolo("sage", "Bandit")

//agenteGenerico.entrarEmCombate()
///box/index.js:44
//        #agentes;
//       ^^^^^^^^

//SyntaxError: Unexpected identifier '#agentes'
//    at wrapSafe (node:internal/modules/cjs/loader:1713:18)
//    at Module._compile (node:internal/modules/cjs/loader:1755:20)
//    at Object..js (node:internal/modules/cjs/loader:1913:10)
//    at Module.load (node:internal/modules/cjs/loader:1505:32)
//    at Function._load (node:internal/modules/cjs/loader:1309:12)
//    at wrapModuleLoad (node:internal/modules/cjs/loader:254:19)
//    at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:171:5)
//    at node:internal/main/run_main_module:36:49

//Node.js v22.
