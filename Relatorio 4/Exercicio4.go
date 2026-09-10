package main
import "fmt"

func validarIngresso(setor string, codigo int) bool{
	if setor == "VIP" && codigo == 2026{
		return true
	} else{
		return false
	}
}

func main() {
	
	var setor string
	var cod int
	var resposta bool

	for{
		fmt.Println("Insira o setor do ingresso:")
		fmt.Scanln(&setor)
		fmt.Println("Insira o código do ingresso:")
		fmt.Scanln(&cod)
		resposta = validarIngresso(setor, cod)
		if resposta == false{
			fmt.Println("Ingresso ou setor inválido. Tente novamente.")
		}else{
			fmt.Println("Acesso liberado à área VIP!")
			break
		}
	}

}
