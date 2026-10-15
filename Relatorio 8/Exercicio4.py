from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo_cyberdeck: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(
            f"{self.nome} usou o cyberdeck {self.cyberdeck.modelo} para quebrar o ICE de um servidor."
        )


class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone {self.codigo} está interceptando o sinal da rede.")


class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"Célula {self.nome} iniciou o ataque!")

        for membro in self.membros:
            membro.executar_invasao()


def main():
    netrunner = OperadorNetrunner("V", "Arasaka Mk. 4")
    drone = DroneDeVigilancia("D-01")

    celula = CelulaHacker("Phantom Liberty", [netrunner, drone])
    celula.iniciar_ataque()

    # IUnidadeDeRede é abstrato e não pode ser instanciado diretamente.
    # unidade = IUnidadeDeRede()


if __name__ == "__main__":
    main()
