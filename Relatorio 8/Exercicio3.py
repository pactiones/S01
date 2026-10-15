from abc import ABC, abstractmethod

class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona: {self.nome} | Arcano: {self.arcano}")


class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome


class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome

        self.persona = Persona("Arsène", "Louco")

        self._equipe = []

    def recrutar(self, aliado: Aliado):

        self._equipe.append(aliado)

    def infiltrar(self, palacio: str):
        print(f"\n{self.codinome} está invadindo o Palácio de {palacio}!")
        self.persona.invocar()

        print("Equipe:")
        for aliado in self._equipe:
            print(f"{aliado.codinome} ({aliado.nome})")


def main():
    a1 = Aliado("Ryuji Sakamoto", "Skull")
    a2 = Aliado("Ann Takamaki", "Panther")

    lider = Lider("Joker")
    lider.recrutar(a1)
    lider.recrutar(a2)

    lider.infiltrar("Kamoshida")


if __name__ == "__main__":
    main()


#Composição: a Persona é criada dentro do Lider
#Agregação: o Lider guarda aliados que existem independentemente dele.
