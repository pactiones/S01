from abc import ABC, abstractmethod

class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} usou a ult.")


class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} - Tanque - usou sua ult.")


class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} - Suporte - usou sua ult.")

    def curar_equipe(self):
        print(f"{self.codinome} curou a equipe!")


def main():
    herois: list[HeroiOverwatch] = [
        HeroiOverwatch("Tracer", "Dano"),
        HeroiTanque("D.Va", "Tanque"),
        HeroiSuporte("Lúcio", "Suporte")
    ]

    for heroi in herois:
        heroi.usar_suprema()

        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()


if __name__ == "__main__":
    main()
