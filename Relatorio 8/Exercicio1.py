from abc import ABC, abstractmethod

class MortoVivo:
    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome
        self._almas = almas
        self.__estus = estus


    #Get e Set
    def get_estus(self):
        return self.__estus

    def set_estus(self, n_estus):
        if n_estus >= 0 and n_estus < 11:
            self.__estus = n_estus
        else:
            print("Quantidade de Estus inválida!")

    def mostrar_status(self):
        return f"{self.nome} | Almas: {self._almas} | Estus: {self.get_estus()}"

class Clerigo(MortoVivo):
    def __init__(self, nome, almas, estus, milagre):
        super().__init__(nome, almas, estus)
        self.milagre = milagre

    def mostrar_status(self):
        status_pai = super().mostrar_status()
        return f"{status_pai} | Milagre: {self.milagre}"

def main():
    clerigo = Clerigo("Morto-vivo Petrus", 2000, 5, "Cura")
    print(clerigo.mostrar_status())

    clerigo.set_estus(15)
    print(clerigo.mostrar_status())

    clerigo.set_estus(10)
    print(clerigo.mostrar_status())
    
if __name__ == "__main__":
    main()



#print(clerigo.__estus)
#Causa erro por conta de estus ser privado
