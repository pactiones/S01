class UsuarioDeNen{
    constructor(nome){
        this.nome = nome
    }

    atacar(alvo){
        console.log(`\n${this.nome} lança um ataque cheio de aura contra ${alvo.nome}`)
    }
}

class Intensificador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`\n${this.nome} ataca ${alvo.nome} com o Jajanken!`)
    }
}

class Transmutador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`\n${this.nome} ataca ${alvo.nome} com Godspeed!`)
    }
}

class Materializador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`\n${this.nome} ataca ${alvo.nome} com Judgment Chain!`)
    }
}

class Aranha{
    constructor(nome, numero){
        this.nome = nome
        this.numero = numero
    }
}


class TrupeFantasma{
    #aranhas;
    constructor(cidade, aranhas = []){
        this.cidade = cidade
        this.#aranhas = aranhas
    }

    revelarAranhas(){
        console.log(`\nA Trupe Fantasma foi avistada em: ${this.cidade}`)
        this.#aranhas.forEach(a => {console.log(`Aranha #${a.numero} - ${a.nome}`)});
    }

    buscarAranha(numero){
        return this.#aranhas.find(a => a.numero === numero)
    }
}

const feitan = new Aranha("Chrollo Lucilfer", 0)
const hisoka = new Aranha("Hisoka", 4)

const trupe = new TrupeFantasma("Yorknew City", [feitan, hisoka])

trupe.revelarAranhas()

const aranhaEncontrada = trupe.buscarAranha(4)

const gon = new Intensificador("Gon")
const killua = new Transmutador("Killua")
const kurapika = new Materializador("Kurapika")

const hunters = [gon, killua, kurapika]

hunters.forEach(h => {h.atacar(aranhaEncontrada)});
