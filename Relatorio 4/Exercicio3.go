package main
import "fmt"

func gerarEscalaPlantao(n int){
	mes := 1
	for i := 1; i <= n; i++ {
		fmt.Printf("Plantão %d: Dia %d do mês \n", i, mes)
		mes = mes + 4
	}
}

func main() {
	var qtd int

	fmt.Println("Digite a quantidade de plantões necessarios:")
	fmt.Scanln(&qtd)
	gerarEscalaPlantao(qtd)
}
