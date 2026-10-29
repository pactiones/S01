class FichaDeCriatura{
    constructor(criatura, nivelDePerigo){
        this.criatura = criatura
        this.nivelDePerigo = nivelDePerigo
    }

    descrever(){
        return `Criatura: ${this.criatura} | Nível de Perigo: ${this.nivelDePerigo}`
    }
}

class DiarioMisterioso{
    #fichas;
    constructor(numero){
        this.numero = numero
        this.#fichas = []
    }

    anotar(criatura, nivelDePerigo){
        this.#fichas.push(new FichaDeCriatura(criatura, nivelDePerigo))
    }

    exibirFichas(){
        console.log(`\nNúmero do diário: ${this.numero}`)
        this.#fichas.forEach(f => {console.log(f.descrever())});
    }
}

class Funcionario{
    constructor(nome, cargo){
        this.nome = nome
        this.cargo = cargo
    }
}

class CabanaDoMisterio{
    #funcionarios;
    constructor(dono){
        this.dono = dono
        this.#funcionarios = []
    }

    contratar(funcionario){
        this.#funcionarios.push(funcionario)
    }

    abrirAsPortas(){
        console.log(`\nCabana do Mistério | Dono: ${this.dono}`)
        this.#funcionarios.forEach(f => {console.log(`Funcionário: ${f.nome} | Cargo: ${f.cargo}`)});
    }
}

const diario3 = new DiarioMisterioso(3)
diario3.anotar("Gnomos", "Baixo")
diario3.anotar("Multihomem", "Médio")
diario3.anotar("Bill Cipher", "Alto")

diario3.exibirFichas()

const wendy = new Funcionario("Wendy", "Caixa")
const soos = new Funcionario("Soos", "Técnico de Manutenção")

const cabana = new CabanaDoMisterio("Tio Stan")
cabana.contratar(wendy)
cabana.contratar(soos)

cabana.abrirAsPortas()


// - Composição: O objeto filho é criado dentro do pai e depende dele para existir. 

// - Agregação: O objeto filho é criado fora e apenas associado ao pai. Ele existe de forma independente do pai.
