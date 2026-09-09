package main
import "fmt"

func ValidarCodigoRastreio(codigo string) (bool, string){
	if len(codigo) == 10 {
		valor := "Código de rastreio registrado no sistema!"
		return true, valor 
	} else {
		valor := "Erro: O código de rastreio deve ter exatamente 10 caracteres."
		return false, valor
	}
}
func main() {
	var codigo string;

	fmt.Println("Digite o codigo de rastreio: ")
	fmt.Scanln(&codigo)

	status, valor := ValidarCodigoRastreio(codigo)

	for status == false {
		fmt.Println(valor)

		fmt.Println("Digite o codigo de rastreio: ")
		fmt.Scanln(&codigo)

		status, valor = ValidarCodigoRastreio(codigo)
	}

	fmt.Println(valor)
}
