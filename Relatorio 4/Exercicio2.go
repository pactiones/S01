package main
import "fmt"

func main() {
	var v1 int 
	var v2 int 
	var v3 int

	fmt.Println("Digite as vendas do 1º trimestre:")
	fmt.Scanln(&v1)
	fmt.Println("Digite as vendas do 2º trimestre:")
	fmt.Scanln(&v2)
	fmt.Println("Digite as vendas do 3º trimestre:")
	fmt.Scanln(&v3)

	total := v1 + v2 + v3
	fmt.Printf("Total de vendas: %d unidades \n", total)
	
	if total < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	}else{
		switch {
			case total >= 250 :
				fmt.Println("Classificação: Categoria Top Seller")
			case total <= 170:
				fmt.Println("Classificação: Categoria Pleno")
			default:
				fmt.Println("Classificação: Categoria Sênior")
		}
	}
}
